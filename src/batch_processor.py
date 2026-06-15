import os
import json
import logging
from pathlib import Path
from ai_extractor import deep_extract, local_fallback_extract

logging.basicConfig(level=logging.INFO, format='%(asctime)s [%(levelname)s] %(name)s: %(message)s')
logger = logging.getLogger("BatchProcessor")

class BatchProcessor:
    def __init__(self, platform: str, territory: str, fallback_only: bool = False):
        self.platform = platform
        self.territory = territory
        self.fallback_only = fallback_only
        base_path = Path(os.path.dirname(os.path.abspath(__file__)))
        self.cache_dir = base_path / "cache" / platform.lower().replace('.', '_')
        self.output_file = base_path / "data" / f"{platform.lower().replace('.', '_')}_extracted.jsonl"
        
    def process_all(self):
        if not self.cache_dir.exists():
            logger.error(f"Cache directory {self.cache_dir} not found.")
            return

        files = list(self.cache_dir.glob("*.html"))
        logger.info(f"Found {len(files)} files in cache for {self.platform}.")
        
        # Load existing processed URLs to skip
        processed_urls = set()
        if self.output_file.exists():
            with open(self.output_file, "r", encoding="utf-8") as f:
                for line in f:
                    try:
                        processed_urls.add(json.loads(line).get("listing_url"))
                    except Exception:
                        continue

        count = 0
        for html_file in files:
            # Load sidecar metadata written by spider at cache time
            meta: dict = {}
            try:
                meta_file = html_file.with_suffix(".meta.json")
                if meta_file.exists():
                    try:
                        with open(meta_file, "r", encoding="utf-8") as f:
                            meta = json.load(f)
                    except Exception as e:
                        logger.warning(f"Could not read sidecar {meta_file.name}: {e}")
            except OSError as e:
                if e.errno == 36:
                    logger.error(f"Skipping file due to OS-level filename length limit: {html_file.name}")
                    continue
                raise e

            listing_url = meta.get("listing_url")
            if listing_url in processed_urls:
                continue

            with open(html_file, "r", encoding="utf-8") as f:
                html_content = f.read()

            logger.info(f"Processing {html_file.name}...")
            
            if self.fallback_only:
                ai_data = local_fallback_extract(html_content, platform=self.platform)
            else:
                ai_data = deep_extract(html_content, platform=self.platform)

            if ai_data:
                # Sidecar values take precedence over whatever the AI inferred
                ai_data["territory"] = meta.get("territory") or self.territory
                ai_data["platform"]  = meta.get("platform")  or self.platform
                if not ai_data.get("listing_url"):
                    ai_data["listing_url"] = (
                        meta.get("listing_url") or f"cached://{html_file.name}"
                    )
                elif meta.get("listing_url"):
                    # Prefer the authoritative URL from the sidecar
                    ai_data["listing_url"] = meta["listing_url"]

                if meta.get("scraped_at"):
                    ai_data.setdefault("scraped_at", meta["scraped_at"])

                with open(self.output_file, "a", encoding="utf-8") as f_out:
                    f_out.write(json.dumps(ai_data, ensure_ascii=False) + "\n")

                count += 1
            
        logger.info(f"Batch complete. Extracted {count} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--platform", required=True)
    parser.add_argument("--territory", required=True)
    parser.add_argument("--fallback-only", action="store_true")
    args = parser.parse_args()
    
    processor = BatchProcessor(args.platform, args.territory, fallback_only=args.fallback_only)
    processor.process_all()

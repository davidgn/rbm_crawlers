import os
import json
import logging
from pathlib import Path
from ai_extractor import deep_extract
from models import BookListing

logging.basicConfig(level=logging.INFO, format='%(asctime)s [%(levelname)s] %(name)s: %(message)s')
logger = logging.getLogger("BatchProcessor")

class BatchProcessor:
    def __init__(self, platform: str, territory: str):
        self.platform = platform
        self.territory = territory
        base_path = Path(os.path.dirname(os.path.abspath(__file__)))
        self.cache_dir = base_path / "cache" / platform.lower().replace('.', '_')
        self.output_file = base_path / "data" / f"{platform.lower().replace('.', '_')}_ai_extracted.jsonl"
        
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
                    except: continue

        count = 0
        for html_file in files:
            with open(html_file, "r", encoding="utf-8") as f:
                html_content = f.read()
            
            # Simple heuristic to get a URL if not stored (optional)
            # In a real batch system, we'd store a manifest.json with filename -> url
            
            logger.info(f"Processing {html_file.name}...")
            ai_data = deep_extract(html_content)
            
            if ai_data:
                # Add territory and platform metadata
                ai_data["territory"] = self.territory
                ai_data["platform"] = self.platform
                
                # Use a fallback listing_url if not in data (could use filename)
                if not ai_data.get("listing_url"):
                    ai_data["listing_url"] = f"cached://{html_file.name}"
                
                with open(self.output_file, "a", encoding="utf-8") as f_out:
                    f_out.write(json.dumps(ai_data, ensure_ascii=False) + "\n")
                
                count += 1
                # Optional: remove file after success to save space
                # os.remove(html_file)
            
        logger.info(f"Batch complete. Extracted {count} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--platform", required=True)
    parser.add_argument("--territory", required=True)
    args = parser.parse_args()
    
    processor = BatchProcessor(args.platform, args.territory)
    processor.process_all()

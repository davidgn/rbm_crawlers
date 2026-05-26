import logging
import json
import os
import random
import time
import sqlite3
from datetime import datetime, timezone
from pathlib import Path
from models import BookListing
from ai_extractor import deep_extract
from playwright.sync_api import sync_playwright

logging.basicConfig(level=logging.INFO, format='%(asctime)s [%(levelname)s] %(name)s: %(message)s')

class BaseSpider:
    """Base class for RBM Crawlers providing common output and caching features."""
    
    def __init__(self, platform_name: str, territory: str):
        self.platform_name = platform_name
        self.territory = territory
        self.logger = logging.getLogger(self.__class__.__name__)
        
        # Paths
        base_path = Path(os.path.dirname(os.path.abspath(__file__)))
        self.output_dir = base_path / "data"
        self.cache_dir = base_path / "cache" / self.platform_name.lower().replace('.', '_')
        
        # Master DB path for harmonization
        self.master_db_path = "/home/davidgn/active_repos/unipress-parser-crawler-family/scripts/session_artifacts/home_operational_residue_2026-04-22/db/unipress_site_definitions.db"
        
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.cache_dir.mkdir(parents=True, exist_ok=True)
        
        self.output_file = self.output_dir / f"{self.platform_name.lower().replace('.', '_')}_listings.jsonl"
        self.items_scraped = 0
        self._seen_urls: set[str] = self._load_seen_urls()
        
        self.user_agents = [
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
            "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edge/123.0.2420.81",
            "Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Mobile/15E148 Safari/604.1"
        ]

    def get_random_headers(self):
        """Generate randomized browser headers to mimic different clients."""
        ua = random.choice(self.user_agents)
        headers = {
            "User-Agent": ua,
            "Accept": "*/*",
            "Accept-Language": "en-US,en;q=0.9",
            "DNT": "1",
            "Connection": "keep-alive"
        }
        return headers

    def lookup_qid(self, name: str) -> str:
        """Lookup a Wikidata QID from the master site definitions database."""
        if not os.path.exists(self.master_db_path):
            return None
            
        try:
            conn = sqlite3.connect(self.master_db_path)
            cursor = conn.cursor()
            # Try exact match on name or slug
            cursor.execute("SELECT wikidata_qid FROM site_definitions WHERE name = ? OR slug = ? LIMIT 1", (name, name.lower().replace(' ', '-')))
            res = cursor.fetchone()
            conn.close()
            return res[0] if res else None
        except Exception as e:
            self.logger.error(f"Failed to lookup QID for {name}: {e}")
            return None

    def _load_seen_urls(self) -> set[str]:
        seen: set[str] = set()
        if not self.output_file.exists():
            return seen
        with open(self.output_file, encoding="utf-8") as fh:
            for line in fh:
                line = line.strip()
                if not line: continue
                try:
                    url = json.loads(line).get("listing_url") or ""
                    if url: seen.add(url)
                except Exception: pass
        if seen:
            self.logger.info("Restart-safe: pre-loaded %d existing URLs from %s", len(seen), self.output_file.name)
        return seen

    def cache_html(self, item_id: str, html: str, url: str = "") -> None:
        """Write {item_id}.html and {item_id}.meta.json to the platform cache directory."""
        html_path = self.cache_dir / f"{item_id}.html"
        meta_path = self.cache_dir / f"{item_id}.meta.json"
        html_path.write_text(html, encoding="utf-8")
        meta = {
            "listing_url": url,
            "platform": self.platform_name,
            "territory": self.territory,
            "scraped_at": datetime.now(timezone.utc).isoformat(),
        }
        meta_path.write_text(json.dumps(meta), encoding="utf-8")

    def save_item(self, item: BookListing):
        """Append an item to the JSON Lines file, skipping duplicates."""
        url = item.listing_url or ""
        if url and url in self._seen_urls:
            return
        
        # Harmonization: Attempt to enrich with QID if missing
        if not getattr(item, 'qid', None):
            # If the platform itself is a publisher, we might find its QID
            item.qid = self.lookup_qid(self.platform_name)

        with open(self.output_file, 'a', encoding='utf-8') as f:
            f.write(json.dumps(item.to_dict()) + '\n')
        
        if url: self._seen_urls.add(url)
        self.items_scraped += 1

    def get_playwright_stealth_config(self, playwright):
        """Standard stealth configuration for Playwright."""
        browser = playwright.chromium.launch(
            headless=False, 
            args=["--disable-blink-features=AutomationControlled"]
        )
        context = browser.new_context(
            user_agent=random.choice(self.user_agents),
            viewport={'width': 1920, 'height': 1080}
        )
        return browser, context

    def cache_html(self, item_id: str, html: str, url: str = None):
        """Cache raw HTML content to the platform's cache directory."""
        filename = f"{item_id}.html"
        cache_path = self.cache_dir / filename
        try:
            with open(cache_path, "w", encoding="utf-8") as f:
                f.write(html)
        except Exception as e:
            self.logger.error(f"Failed to cache HTML for {item_id}: {e}")

    def run(self):
        """Main execution method. Should be overridden by subclasses."""
        raise NotImplementedError("Subclasses must implement run()")

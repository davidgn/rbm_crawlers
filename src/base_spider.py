import logging
import json
import os
import random
import time
from datetime import datetime, timezone
from pathlib import Path
from models import BookListing
from ai_extractor import deep_extract

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
        
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.cache_dir.mkdir(parents=True, exist_ok=True)
        
        self.output_file = self.output_dir / f"{self.platform_name.lower().replace('.', '_')}_listings.jsonl"
        self.items_scraped = 0
        self.user_agents = [
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36",
            "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ]
        
    def save_item(self, item: BookListing):
        """Append an item to the JSON Lines file."""
        with open(self.output_file, 'a', encoding='utf-8') as f:
            f.write(json.dumps(item.to_dict()) + '\n')
        self.items_scraped += 1

    def cache_html(self, item_id: str, html_content: str, url: str | None = None):
        """Save raw HTML to cache for batch processing.

        If *url* is provided a sidecar ``{item_id}.meta.json`` is written
        alongside the HTML so the batch processor can reconstruct the
        listing URL without relying on AI extraction.
        """
        cache_file = self.cache_dir / f"{item_id}.html"
        with open(cache_file, 'w', encoding='utf-8') as f:
            f.write(html_content)
        if url:
            meta = {
                "listing_url": url,
                "platform": self.platform_name,
                "territory": self.territory,
                "scraped_at": datetime.now(timezone.utc).isoformat(),
            }
            meta_file = self.cache_dir / f"{item_id}.meta.json"
            with open(meta_file, 'w', encoding='utf-8') as f:
                json.dump(meta, f, ensure_ascii=False)
        return cache_file
        
    def random_delay(self, min_s=1, max_s=3):
        time.sleep(random.uniform(min_s, max_s))

    def get_playwright_stealth_config(self, playwright):
        """Standard stealth configuration for Playwright."""
        browser = playwright.chromium.launch(
            headless=True, 
            args=["--disable-blink-features=AutomationControlled"]
        )
        context = browser.new_context(
            user_agent=random.choice(self.user_agents),
            viewport={'width': 1920, 'height': 1080}
        )
        return browser, context

    def ai_enrich(self, html_content):
        """Use the bibliographic-parser AI subagent to enrich/extract data."""
        return deep_extract(html_content)

    def run(self):
        """Main execution method. Should be overridden by subclasses."""
        raise NotImplementedError("Subclasses must implement run()")

import logging
import json
import os
import random
import time
import sqlite3
from datetime import datetime, timezone
from pathlib import Path
from models import BookListing
from signal_scavenger import extract_signals

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
        self.master_db_path = os.environ.get("MASTER_DB_PATH", "unipress_site_definitions.db")
        
        # Real-time Event Firehose setup
        try:
            import redis
            self.redis_client = redis.Redis.from_url(os.environ.get("REDIS_URL", "redis://localhost:6379/0"))
        except ImportError:
            self.logger.warning("Redis package not installed. Firehose disabled.")
            self.redis_client = None
        except Exception as e:
            self.logger.warning(f"Redis connection failed: {e}")
            self.redis_client = None
            
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

    def human_delay(self, min_ms=1000, max_ms=3000):
        """Pause execution for a random interval to mimic human reading time."""
        delay = random.uniform(min_ms, max_ms) / 1000.0
        time.sleep(delay)

    def human_jitter(self, page):
        """Perform minor mouse movements to mimic human interaction."""
        try:
            viewport = page.viewport_size
            if viewport:
                x = random.randint(0, viewport['width'])
                y = random.randint(0, viewport['height'])
                page.mouse.move(x, y)
        except Exception:
            pass

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
                if not line:
                    continue
                try:
                    url = json.loads(line).get("listing_url") or ""
                    if url:
                        seen.add(url)
                except Exception:
                    pass
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

    def scavenge_metadata(self, text: str, listing: BookListing) -> BookListing:
        """Use regex scavenging to fill in missing fields in a BookListing."""
        signals = extract_signals(text)
        
        if not getattr(listing, 'isbn', None) and signals.get("isbn"):
            listing.isbn = signals["isbn"]
        if not getattr(listing, 'publication_year', None) and signals.get("publication_year"):
            listing.publication_year = signals["publication_year"]
        if not getattr(listing, 'publisher', None) and signals.get("publisher"):
            listing.publisher = signals["publisher"]
        if not getattr(listing, 'pages', None) and signals.get("pages"):
            listing.pages = signals["pages"]
        if not getattr(listing, 'binding', None) and signals.get("binding"):
            listing.binding = signals["binding"]
        if not getattr(listing, 'language', None) and signals.get("language"):
            listing.language = signals["language"]
        if not getattr(listing, 'dimensions', None) and signals.get("dimensions"):
            listing.dimensions = signals["dimensions"]
        if not getattr(listing, 'category', None) and signals.get("category"):
            listing.category = signals["category"]
        if not getattr(listing, 'edition', None) and signals.get("edition"):
            listing.edition = signals["edition"]
            
        return listing

    def save_item(self, item: BookListing):
        """Append an item to the JSON Lines file, skipping duplicates."""
        url = item.listing_url or ""
        if url and url in self._seen_urls:
            return
        
        # Harmonization: Attempt to enrich with QID if missing
        if not getattr(item, 'qid', None):
            item.qid = self.lookup_qid(self.platform_name)

        with open(self.output_file, 'a', encoding='utf-8') as f:
            f.write(json.dumps(item.to_dict()) + '\n')
            
        # Broadcast to the real-time arbitrage Firehose
        if getattr(self, "redis_client", None):
            try:
                self.redis_client.publish('oracle_firehose', json.dumps(item.to_dict()))
            except Exception as e:
                self.logger.warning(f"Failed to publish to Firehose: {e}")
        
        if url:
            self._seen_urls.add(url)
        self.items_scraped += 1

    def get_playwright_stealth_config(self, playwright):
        """Standard stealth configuration for Playwright."""
        browser = playwright.chromium.launch(
            headless=True, 
            args=[
                "--disable-blink-features=AutomationControlled",
                "--no-sandbox",
                "--disable-setuid-sandbox",
                "--disable-infobars",
                "--window-position=0,0",
                "--ignore-certificate-errors",
                "--ignore-certificate-errors-spki-list",
                f"--user-agent={random.choice(self.user_agents)}"
            ]
        )
        
        # Randomized viewport
        width = random.randint(1280, 1920)
        height = random.randint(720, 1080)
        
        context = browser.new_context(
            user_agent=random.choice(self.user_agents),
            viewport={'width': width, 'height': height},
            java_script_enabled=True,
            ignore_https_errors=True
        )
        return browser, context

    def run(self):
        """Main execution method. Should be overridden by subclasses."""
        raise NotImplementedError("Subclasses must implement run()")

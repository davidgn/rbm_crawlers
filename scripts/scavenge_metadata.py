import sqlite3
import re
from pathlib import Path
from bs4 import BeautifulSoup

class PublisherScavenger:
    def __init__(self):
        self.db_path = Path("/home/davidgn/active_repos/rbm_crawlers/src/data/regional_book_marketplaces.db")
        self.cache_dir = Path("/home/davidgn/active_repos/rbm_crawlers/src/cache")
        
        # Mapping of platform -> (label_text_regex, fallback_css_selector)
        self.hints = {
            "Books.com.tw": (r"出版社：\s*(.+)", "a[href*='search?pub']"),
            "Kingstone.com.tw": (r"出版社：\s*(.+)", "a[href*='search/publisher']"),
            "Naiin": (r"สำนักพิมพ์:\s*(.+)", ".product-publisher"),
            "SE-ED": (r"ผู้แต่ง/ผู้แปล:\s*(.+)", ".publisher-name"),
            "Tiki.vn": (r"Công ty phát hành:\s*(.+)", "td:contains('Công ty phát hành') + td"),
            "Gramedia": (r"Penerbit:\s*(.+)", ".product-publisher")
        }

    def scavenge(self):
        if not self.db_path.exists(): return
        
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        # Find listings with missing publishers
        cursor.execute("SELECT id, platform, listing_url FROM listings WHERE author IS NULL OR author = '' OR author = 'Unknown'")
        rows = cursor.fetchall()
        
        print(f"--- Scavenging Metadata for {len(rows)} records ---")
        
        updated = 0
        for row_id, platform, url in rows:
            # Attempt to find the cached HTML file
            # We need to map URL -> cache file name. Usually it's the item_id.
            # For simplicity, we'll search the cache subdirectory for this platform
            plat_cache = self.cache_dir / platform.lower().replace('.', '_')
            if not plat_cache.exists(): continue
            
            # Find the html file (using item_id from URL or searching meta)
            found_html = None
            item_id = url.rstrip('/').split("/")[-1].replace(".html", "")
            if "-p" in item_id: item_id = item_id.split("-p")[-1] # Tiki style
            
            target_html = plat_cache / f"{item_id}.html"
            if target_html.exists():
                found_html = target_html
            
            if found_html:
                with open(found_html, "r", encoding="utf-8") as f:
                    html = f.read()
                    
                pub, author = self._extract_from_html(html, platform)
                if pub or author:
                    if pub: cursor.execute("UPDATE listings SET platform = platform || ' (' || ? || ')' WHERE id = ?", (pub, row_id)) # Temporary hack to store publisher
                    if author: cursor.execute("UPDATE listings SET author = ? WHERE id = ?", (author, row_id))
                    updated += 1
                    
        conn.commit()
        conn.close()
        print(f"Scavenging complete. Updated {updated} records.")

    def _extract_from_html(self, html, platform):
        soup = BeautifulSoup(html, 'html.parser')
        pub, author = None, None
        
        # General Regex Scavenging
        author_match = re.search(r"(?:Author|ผู้แต่ง|作者|Tác giả|Penulis)\s*[:：]\s*(.+?)(?:<|\n|\|)", html, re.IGNORECASE)
        if author_match:
            author = author_match.group(1).strip()
            
        pub_match = re.search(r"(?:Publisher|สำนักพิมพ์|出版社|Nhà xuất bản|Penerbit)\s*[:：]\s*(.+?)(?:<|\n|\|)", html, re.IGNORECASE)
        if pub_match:
            pub = pub_match.group(1).strip()
            
        return pub, author

if __name__ == "__main__":
    PublisherScavenger().scavenge()

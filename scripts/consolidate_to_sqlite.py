import json
import sqlite3
import os
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

def consolidate_to_sqlite():
    data_dir = ROOT / "src" / "data"
    extracted_files = list(data_dir.glob("*_extracted.jsonl")) + list(data_dir.glob("*_listings.jsonl"))
    db_path = data_dir / "regional_book_marketplaces.db"
    
    # Remove old DB to ensure clean slate for consolidation
    if db_path.exists():
        os.remove(db_path)
        
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    
    # Create master table
    cursor.execute("""
    CREATE TABLE IF NOT EXISTS listings (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        isbn TEXT,
        title TEXT,
        author TEXT,
        price TEXT,
        price_currency TEXT,
        price_usd REAL,
        condition TEXT,
        platform TEXT,
        territory TEXT,
        listing_url TEXT UNIQUE,
        scraped_at TEXT,
        extraction_method TEXT
    )
    """)
    
    print(f"--- Consolidating data to {db_path} ---")
    
    total_rows = 0
    for f in extracted_files:
        platform = f.name.replace("_extracted.jsonl", "")
        print(f"  Ingesting {platform}...")
        
        with open(f, "r", encoding="utf-8") as fh:
            for line in fh:
                try:
                    item = json.loads(line)
                    cursor.execute("""
                    INSERT OR IGNORE INTO listings 
                    (isbn, title, author, price, price_currency, condition, platform, territory, listing_url, scraped_at, extraction_method)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                    """, (
                        item.get("isbn"),
                        item.get("title"),
                        item.get("author"),
                        item.get("price"),
                        item.get("price_currency"),
                        item.get("condition"),
                        item.get("platform"),
                        item.get("territory"),
                        item.get("listing_url"),
                        item.get("scraped_at"),
                        item.get("extraction_method")
                    ))
                    if cursor.rowcount > 0:
                        total_rows += 1
                except Exception:
                    continue
                    
    conn.commit()
    conn.close()
    print(f"\nConsolidation complete. Total unique records in DB: {total_rows}")

if __name__ == "__main__":
    consolidate_to_sqlite()

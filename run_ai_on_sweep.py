import sqlite3
import httpx
from pathlib import Path
import os
import sys

# Ensure src is in sys.path to import ai_extractor
ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / "src"))
from ai_extractor import local_fallback_extract

def verify_and_extract():
    db_path = ROOT / "src" / "data" / "regional_book_marketplaces.db"
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    cursor.execute("""
        SELECT id, listing_url 
        FROM listings 
        WHERE isbn IS NULL OR isbn = '' OR isbn = 'Unknown' OR length(isbn) < 10
    """)
    rows = cursor.fetchall()

    print(f"--- Running Fast Extraction on {len(rows)} listings ---")
    
    client = httpx.Client(timeout=15.0, verify=False, follow_redirects=True, headers={
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/124.0.0.0 Safari/537.36'
    })

    updates = 0
    import concurrent.futures

    def fetch_and_extract(row):
        row_id, url = row
        if not url or url == "Unknown":
            return None
        try:
            resp = client.get(url)
            if resp.status_code == 200:
                ai_data = local_fallback_extract(resp.text)
                if ai_data:
                    return (row_id, ai_data, url)
        except Exception:
            pass
        return None

    results = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=50) as executor:
        for result in executor.map(fetch_and_extract, rows):
            if result:
                results.append(result)
                
    for result in results:
        row_id, ai_data, url = result
        condition = ai_data.get("condition")
        title = ai_data.get("title")
        isbn = ai_data.get("isbn")
        publisher = ai_data.get("publisher")
        
        if condition or title or isbn or publisher:
            updates_sql = []
            params = []
            if condition:
                updates_sql.append("condition = ?")
                params.append(condition)
            if title:
                updates_sql.append("title = ?")
                params.append(title)
            if isbn:
                isbn_clean = ''.join(filter(str.isalnum, str(isbn)))
                updates_sql.append("isbn = ?")
                params.append(isbn_clean)
            if publisher:
                updates_sql.append("publisher = ?")
                params.append(publisher)
                
            if updates_sql:
                sql = f"UPDATE listings SET {', '.join(updates_sql)} WHERE id = ?"
                params.append(row_id)
                cursor.execute(sql, tuple(params))
                updates += 1
                print(f"  -> Extracted: {title[:30] if title else ''}... | ISBN: {isbn} | Pub: {publisher}")
            
    conn.commit()
    conn.close()
    print(f"--- Completed. Updated {updates} records. ---")

if __name__ == "__main__":
    verify_and_extract()

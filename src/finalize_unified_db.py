import json
import sqlite3
from pathlib import Path

def main():
    db_path = os.environ.get("UNIFIED_DB_PATH", "unified_bibliographic.db")
    conn = sqlite3.connect(db_path)
    c = conn.cursor()
    
    data_dir = Path(__file__).parent / 'data'
    all_files = list(data_dir.glob('*_listings.jsonl')) + list(data_dir.glob('*_ai_extracted.jsonl')) + list(data_dir.glob('*_enriched.jsonl'))
    
    total_added = 0
    for file_path in all_files:
        with open(file_path, 'r', encoding='utf-8') as f:
            for line in f:
                if not line.strip(): continue
                try:
                    record = json.loads(line)
                    title = record.get('title')
                    if not title or title == "Unknown": continue
                    
                    author = record.get('author')
                    year = record.get('publication_year') or record.get('year')
                    identifier = record.get('isbn')
                    pages = record.get('pages')
                    category = record.get('category')
                    source = record.get('platform') or record.get('territory')
                    
                    c.execute("""
                        INSERT INTO unified_records 
                        (source, title, author, year, identifier, pages, category)
                        VALUES (?, ?, ?, ?, ?, ?, ?)
                    """, (source, title, author, year, identifier, pages, category))
                    total_added += 1
                except Exception:
                    pass
                    
    conn.commit()
    conn.close()
    print(f"Imported {total_added} records into {db_path}.")

if __name__ == "__main__":
    main()

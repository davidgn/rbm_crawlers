import sqlite3
from pathlib import Path

def main():
    ROOT = Path(__file__).resolve().parent
    db_path = ROOT / "src" / "data" / "regional_book_marketplaces.db"
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    cursor.execute("""
        SELECT title, author, isbn, price, price_usd, condition, platform, territory 
        FROM listings 
        WHERE (isbn LIKE '0226%' AND length(isbn) = 10)
           OR (isbn LIKE '9780226%' AND length(isbn) = 13)
        ORDER BY price_usd ASC NULLS LAST
    """)
    results = cursor.fetchall()

    print(f"\n--- 10-Digit ISBNs starting with '0226' ({len(results)} matches) ---")
    print(f"{'Title':<45} | {'Author':<15} | {'ISBN':<13} | {'Local Price':<15} | {'USD':<7} | {'Condition':<15} | {'Platform':<15} | {'Territory'}")
    print("-" * 155)
    
    for title, author, isbn, price, price_usd, condition, platform, territory in results:
        t = (title[:42] + '...') if title and len(title) > 45 else (title or 'Unknown')
        a = (author[:12] + '...') if author and len(author) > 15 else (author or 'Unknown')
        i = isbn if isbn else 'Unknown'
        lp = price[:15] if price else 'N/A'
        up = f"${price_usd:.2f}" if price_usd is not None else 'N/A'
        c = condition[:15] if condition else 'Unknown'
        plat = platform[:15] if platform else 'Unknown'
        terr = territory[:15] if territory else 'Unknown'
        
        print(f"{t:<45} | {a:<15} | {i:<13} | {lp:<15} | {up:<7} | {c:<15} | {plat:<15} | {terr}")
    print("-" * 155)
    conn.close()

if __name__ == "__main__":
    main()

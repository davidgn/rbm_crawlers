import sqlite3
import argparse
from pathlib import Path

def search_db(query):
    ROOT = Path(__file__).resolve().parents[1]
    db_path = ROOT / "src" / "data" / "regional_book_marketplaces.db"
    if not db_path.exists():
        print(f"Database not found at {db_path}")
        return

    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Search across title, author, and isbn
    search_term = f"%{query}%"
    cursor.execute("""
        SELECT title, author, isbn, price, price_usd, condition, platform, territory 
        FROM listings 
        WHERE title LIKE ? OR author LIKE ? OR isbn LIKE ?
        ORDER BY price_usd ASC NULLS LAST
        LIMIT 50
    """, (search_term, search_term, search_term))
    
    results = cursor.fetchall()
    conn.close()

    if not results:
        print(f"No results found for '{query}'")
        return

    print(f"\n--- RBM Search Results for '{query}' ({len(results)} matches) ---")
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

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Search the Regional Book Marketplaces Database")
    parser.add_argument("query", type=str, help="Search term (Title, Author, or ISBN)")
    args = parser.parse_args()
    search_db(args.query)

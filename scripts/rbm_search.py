import sqlite3
import argparse
from pathlib import Path

def search_db(query):
    db_path = Path("/home/davidgn/active_repos/rbm_crawlers/src/data/regional_book_marketplaces.db")
    if not db_path.exists():
        print(f"Database not found at {db_path}")
        return

    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Search across title, author, and isbn
    search_term = f"%{query}%"
    cursor.execute("""
        SELECT title, author, isbn, price_usd, platform, territory 
        FROM listings 
        WHERE title LIKE ? OR author LIKE ? OR isbn LIKE ?
        ORDER BY price_usd ASC
        LIMIT 50
    """, (search_term, search_term, search_term))
    
    results = cursor.fetchall()
    conn.close()

    if not results:
        print(f"No results found for '{query}'")
        return

    print(f"\n--- RBM Search Results for '{query}' ({len(results)} matches) ---")
    print(f"{'Title':<50} | {'Author':<20} | {'ISBN':<13} | {'Price':<7} | {'Platform':<15} | {'Territory'}")
    print("-" * 135)
    
    for title, author, isbn, price, platform, territory in results:
        t = (title[:47] + '...') if title and len(title) > 50 else (title or 'Unknown')
        a = (author[:17] + '...') if author and len(author) > 20 else (author or 'Unknown')
        i = isbn if isbn else 'Unknown'
        p = f"${price:.2f}" if price else 'N/A'
        plat = platform[:15] if platform else 'Unknown'
        terr = territory[:15] if territory else 'Unknown'
        
        print(f"{t:<50} | {a:<20} | {i:<13} | {p:<7} | {plat:<15} | {terr}")
    print("-" * 135)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Search the Regional Book Marketplaces Database")
    parser.add_argument("query", type=str, help="Search term (Title, Author, or ISBN)")
    args = parser.parse_args()
    search_db(args.query)

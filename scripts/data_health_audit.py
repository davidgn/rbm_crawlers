import sqlite3
from pathlib import Path

def generate_health_audit():
    db_path = Path("/home/davidgn/active_repos/rbm_crawlers/src/data/regional_book_marketplaces.db")
    if not db_path.exists():
        print(f"Database not found at {db_path}")
        return

    conn = sqlite3.connect(db_path)
    
    query = """
    SELECT 
        platform,
        COUNT(*) as total_records,
        SUM(CASE WHEN isbn IS NULL OR isbn = 'Unknown' THEN 1 ELSE 0 END) as missing_isbn,
        SUM(CASE WHEN author IS NULL OR author = 'Unknown' THEN 1 ELSE 0 END) as missing_author,
        SUM(CASE WHEN price IS NULL OR price = 'Unknown' THEN 1 ELSE 0 END) as missing_price,
        ROUND(AVG(price_usd), 2) as avg_usd
    FROM listings
    GROUP BY platform
    ORDER BY total_records DESC
    """
    
    cursor = conn.cursor()
    cursor.execute(query)
    rows = cursor.fetchall()
    conn.close()
    
    print("\n--- RBM Data Quality Health Audit ---")
    print(f"{'Platform':<20} | {'Total':<6} | {'No ISBN %':<10} | {'No Auth %':<10} | {'No Price %':<11} | {'Avg USD'}")
    print("-" * 80)
    
    poor_isbn = []
    poor_author = []
    
    for platform, total, m_isbn, m_auth, m_price, avg_usd in rows:
        pct_isbn = round((m_isbn / total) * 100, 1) if total else 0
        pct_auth = round((m_auth / total) * 100, 1) if total else 0
        pct_price = round((m_price / total) * 100, 1) if total else 0
        usd = f"${avg_usd:.2f}" if avg_usd is not None else "N/A"
        
        print(f"{platform[:20]:<20} | {total:<6} | {pct_isbn:<10} | {pct_auth:<10} | {pct_price:<11} | {usd}")
        
        if pct_isbn > 50: poor_isbn.append(platform)
        if pct_auth > 50: poor_author.append(platform)

    print("\nActionable Insights:")
    if poor_isbn:
        print(f"- HIGH PRIORITY: Update ISBN extraction selectors for: {', '.join(poor_isbn)}")
    if poor_author:
        print(f"- MEDIUM PRIORITY: Update Author extraction selectors for: {', '.join(poor_author)}")

if __name__ == "__main__":
    generate_health_audit()

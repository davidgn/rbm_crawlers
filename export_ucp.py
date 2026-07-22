import sqlite3
import csv
from pathlib import Path
import os

def export_data():
    ROOT = Path(__file__).resolve().parent
    db_path = ROOT / "src" / "data" / "regional_book_marketplaces.db"
    
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Query for "Chicago"
    cursor.execute("""
        SELECT title, author, isbn, price, price_usd, condition, platform, territory, listing_url
        FROM listings 
        WHERE (title LIKE '%University of Chicago Press%' OR author LIKE '%University of Chicago Press%'
           OR (isbn LIKE '0226%' AND length(isbn) = 10)
           OR (isbn LIKE '9780226%' AND length(isbn) = 13))
           AND title NOT LIKE '%No results%'
        ORDER BY price_usd ASC NULLS LAST
    """)
    results = cursor.fetchall()
    
    # Save as CSV
    csv_path = ROOT / "uc_press_global_export.csv"
    with open(csv_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['Title', 'Author', 'ISBN', 'Local Price', 'Price (USD)', 'Condition', 'Platform', 'Territory', 'URL'])
        writer.writerows(results)
        
    print(f"Exported {len(results)} rows to {csv_path}")

    # Also save as Markdown artifact
    artifact_dir = Path("/home/senex/.gemini/antigravity-cli/brain/4ebbf20e-2cca-49fa-b189-290e506f3323")
    artifact_path = artifact_dir / "uc_press_global_export.md"
    
    with open(artifact_path, 'w', encoding='utf-8') as f:
        f.write("# University of Chicago Press - Global Sweep Export\n\n")
        f.write(f"Total Matches: {len(results)}\n\n")
        f.write("| Title | Author | ISBN | Local Price | USD | Condition | Platform | Territory |\n")
        f.write("|-------|--------|------|-------------|-----|-----------|----------|-----------|\n")
        for r in results:
            title = (r[0][:40] + '...') if r[0] and len(r[0]) > 40 else (r[0] or 'Unknown')
            author = (r[1][:15] + '...') if r[1] and len(r[1]) > 15 else (r[1] or 'Unknown')
            isbn = r[2] if r[2] else 'Unknown'
            lp = r[3] if r[3] else 'N/A'
            up = f"${r[4]:.2f}" if r[4] is not None else 'N/A'
            c = r[5] if r[5] else 'Unknown'
            plat = r[6] if r[6] else 'Unknown'
            terr = r[7] if r[7] else 'Unknown'
            f.write(f"| {title} | {author} | {isbn} | {lp} | {up} | {c} | {plat} | {terr} |\n")
            
    print(f"Exported artifact to {artifact_path}")
    conn.close()

if __name__ == "__main__":
    export_data()

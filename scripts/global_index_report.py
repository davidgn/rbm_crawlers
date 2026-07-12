import sqlite3
from pathlib import Path

# Add project roots to path for importing strategies
REPO_RBM = "/home/davidgn/active_repos/rbm_crawlers"
REPO_RECON = "/home/davidgn/active_repos/openrefine-reconciliation-service"

from lib.reconcile_dispatch import dispatch_reconcile_query

# Best sellers for the index
BEST_SELLERS = [
    "Atomic Habits",
    "The Psychology of Money",
    "Sapiens",
    "Thinking Fast and Slow",
    "The Alchemist"
]

# Regional targets to compare
TARGETS = [
    ("se-ed-th", "Thailand"),
    ("books-com-tw", "Taiwan"),
    ("fahasa-vn", "Vietnam"),
    ("jarir-sa", "Saudi Arabia"),
    ("gramedia-id", "Indonesia")
]

def generate_global_index():
    print("--- Generating Global RBM Price Index ---")
    
    # Store results: {book_name: {territory: price}}
    results = {book: {} for book in BEST_SELLERS}
    
    for book in BEST_SELLERS:
        for source_id, territory in TARGETS:
            print(f"Searching for '{book}' in {territory}...")
            try:
                # Use the live reconciliation dispatcher
                recon_hits = dispatch_reconcile_query(source_id, book, {})
                if recon_hits:
                    # Take the first high-scoring match
                    best_hit = recon_hits[0]
                    # The name often includes the price in our strategy, or we need to fetch it
                    # For this index, we'll try to find it in our newly structured DB first
                    price = lookup_price_in_db(best_hit['name'], territory)
                    if price:
                        results[book][territory] = price
                    else:
                        results[book][territory] = "Matched (Price Pending)"
                else:
                    results[book][territory] = "N/A"
            except Exception as e:
                results[book][territory] = f"Error: {str(e)[:20]}"

    # Print Table
    header = "| Book | " + " | ".join([t[1] for t in TARGETS]) + " |"
    print("\n" + header)
    print("|" + "---|" * (len(TARGETS) + 1))
    for book in BEST_SELLERS:
        row = f"| {book} | " + " | ".join([str(results[book].get(t[1], "N/A")) for t in TARGETS]) + " |"
        print(row)

def lookup_price_in_db(title_part, territory):
    db_path = Path("/home/davidgn/active_repos/rbm_crawlers/src/data/regional_book_marketplaces.db")
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    # Fuzzy match on title
    cursor.execute("SELECT price_usd FROM listings WHERE territory = ? AND title LIKE ? AND price_usd > 0 LIMIT 1", 
                   (territory, f"%{title_part[:20]}%"))
    res = cursor.fetchone()
    conn.close()
    return f"${res[0]}" if res else None

if __name__ == "__main__":
    generate_global_index()

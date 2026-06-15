import json
import httpx
import time
import csv

input_file = "/mnt/data7/home/davidgn/active_repos/rbm_crawlers/src/data/nearbook_listings.jsonl"
output_file = "/mnt/data7/home/davidgn/active_repos/rbm_crawlers/src/data/nearbook_enriched.jsonl"
csv_file = "/mnt/data7/home/davidgn/active_repos/rbm_crawlers/src/data/nearbook_enriched.csv"

def get_isbn(title, author):
    # Basic OpenLibrary search for ISBN
    url = "https://openlibrary.org/search.json"
    params = {"title": title, "author": author if author else "", "limit": 1}
    try:
        resp = httpx.get(url, params=params, timeout=10.0)
        data = resp.json()
        if data.get("docs"):
            doc = data["docs"][0]
            if "isbn" in doc:
                return doc["isbn"][0]
    except Exception:
        return None
    return None

def enrich():
    with open(input_file, "r", encoding="utf-8") as f_in:
        with open(output_file, "w", encoding="utf-8") as f_out:
            for line in f_in:
                item = json.loads(line)
                if "isbn" not in item:
                    print(f"Enriching: {item.get('title')}")
                    isbn = get_isbn(item.get("title"), item.get("author"))
                    item["isbn"] = isbn
                    time.sleep(1.0) # OpenLibrary rate limit compliance
                f_out.write(json.dumps(item) + "\n")

    # CSV Export
    with open(output_file, "r", encoding="utf-8") as f_in, open(csv_file, "w", newline="", encoding="utf-8") as f_out:
        reader = (json.loads(line) for line in f_in)
        writer = csv.DictWriter(f_out, fieldnames=["territory", "platform", "seller_id", "title", "author", "condition", "price", "listing_url", "timestamp", "seller_comments", "isbn"])
        writer.writeheader()
        for row in reader:
            writer.writerow(row)

if __name__ == "__main__":
    enrich()

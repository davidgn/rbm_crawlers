import json
import os
from collections import defaultdict
from pathlib import Path

def analyze_overlaps():
    data_dir = Path("/home/davidgn/active_repos/rbm_crawlers/src/data")
    extracted_files = list(data_dir.glob("*_extracted.jsonl"))
    
    isbn_map = defaultdict(list)
    platform_counts = defaultdict(int)
    
    for f in extracted_files:
        platform = f.name.replace("_extracted.jsonl", "")
        with open(f, "r", encoding="utf-8") as fh:
            for line in fh:
                try:
                    item = json.loads(line)
                    isbn = item.get("isbn")
                    if isbn and len(isbn) >= 10:
                        isbn_map[isbn].append(platform)
                        platform_counts[platform] += 1
                except: continue
                
    print("--- RBM ISBN Overlap Analysis ---")
    print(f"Total structured items analyzed: {sum(platform_counts.values())}")
    for p, count in platform_counts.items():
        print(f"  - {p}: {count} items")
        
    overlaps = {isbn: platforms for isbn, platforms in isbn_map.items() if len(set(platforms)) > 1}
    
    print(f"\nTotal ISBNs with cross-platform overlap: {len(overlaps)}")
    
    if overlaps:
        print("\nTop Overlapping ISBNs:")
        # Sort by number of platforms
        sorted_overlaps = sorted(overlaps.items(), key=lambda x: len(set(x[1])), reverse=True)
        for isbn, platforms in sorted_overlaps[:10]:
            print(f"  - ISBN {isbn}: Found in {', '.join(set(platforms))}")

if __name__ == "__main__":
    analyze_overlaps()

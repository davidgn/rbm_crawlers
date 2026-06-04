import json
import argparse
from pathlib import Path
from collections import Counter
import re

def validate_isbn13(isbn: str) -> bool:
    isbn = re.sub(r"[^0-9]", "", isbn)
    if len(isbn) != 13: return False
    total = 0
    for i, digit in enumerate(isbn[:-1]):
        weight = 1 if i % 2 == 0 else 3
        total += int(digit) * weight
    check_digit = (10 - (total % 10)) % 10
    return int(isbn[-1]) == check_digit

def run_audit(file_path: Path):
    if not file_path.exists():
        print(f"Error: {file_path} not found.")
        return

    total = 0
    resolved = 0
    fallback_matches = 0
    valid_isbns = 0
    total_isbns = 0
    
    entity_types = Counter()
    publishers = Counter()
    missing_fields = Counter()
    
    print(f"Deep Audit Report: {file_path.name}")
    print("-" * 40)

    with open(file_path, "r", encoding="utf-8") as f:
        for line in f:
            try:
                item = json.loads(line)
                total += 1
                
                qid = item.get("qid")
                if qid:
                    if qid.endswith("_SYS"):
                        fallback_matches += 1
                    elif qid.startswith("Q"):
                        resolved += 1
                        # We can't know the exact type without another API call,
                        # but we can track names as proxy for variety.
                        entity_types["Wikidata Resolved"] += 1
                
                isbn = item.get("isbn")
                if isbn:
                    total_isbns += 1
                    if validate_isbn13(isbn):
                        valid_isbns += 1
                
                pub = item.get("publisher")
                if pub and pub not in ["-", "None", "null", "N/A"]:
                    publishers[pub] += 1
                else:
                    missing_fields["Publisher"] += 1
                
                if not item.get("pages"): missing_fields["Pages"] += 1
                if not item.get("binding"): missing_fields["Binding"] += 1
                if not item.get("publication_year"): missing_fields["Year"] += 1
                
            except Exception:
                continue

    if total == 0:
        print("No records found.")
        return

    print(f"Total Records:           {total:,}")
    print(f"Wikidata Resolution:     {(resolved/total)*100:.1f}% ({resolved:,})")
    print(f"System Fallbacks:        {(fallback_matches/total)*100:.1f}% ({fallback_matches:,})")
    print(f"ISBN Validity (13):      {(valid_isbns/total_isbns)*100:.1f}% ({valid_isbns:,}/{total_isbns:,})" if total_isbns else "ISBN Validity: N/A")
    
    print("\nMetadata Coverage:")
    print(f" - Publisher:  {(1 - missing_fields['Publisher']/total)*100:.1f}%")
    print(f" - Pages:      {(1 - missing_fields['Pages']/total)*100:.1f}%")
    print(f" - Binding:    {(1 - missing_fields['Binding']/total)*100:.1f}%")
    print(f" - Year:       {(1 - missing_fields['Year']/total)*100:.1f}%")
    
    print("\nTop 10 Publishers:")
    for pub, count in publishers.most_common(10):
        print(f" - {pub}: {count:,}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("file", help="Enriched JSONL file path")
    args = parser.parse_args()
    run_audit(Path(args.file))

import json
import re

manifest_path = "/home/davidgn/active_repos/openrefine-reconciliation-service/lib/schemas/manifest.py"
registry_path = "/home/davidgn/active_repos/identifier-harvesting-pipeline/data/reference/harvest_source_registry.json"

with open(manifest_path, 'r') as f:
    manifest_content = f.read()

# Extract DEFAULT_TYPE_IDS
match = re.search(r'DEFAULT_TYPE_IDS = \[(.*?)\]', manifest_content, re.DOTALL)
if match:
    type_ids_str = match.group(1)
    existing_ids = set(re.findall(r"'(.*?)'", type_ids_str))
else:
    existing_ids = set()

with open(registry_path, 'r') as f:
    registry = json.load(f)

book_ecosystem_keywords = [
    "writer", "author", "poet", "essayist", "translator", "publisher", "press", "imprint", 
    "prize", "award", "scholar", "monograph", "book", "literary", "illustration", "fair", "bibliography",
    "manga", "comics", "graphic novel", "children", "YA", "biography", "dictionary", "encyclopedia"
]

candidates = []
for entry in registry:
    source = entry.get("source", "")
    notes = entry.get("notes", "").lower()
    implemented = entry.get("implemented", False)
    wd_prop = entry.get("wd_property", "")
    
    if not implemented or not wd_prop:
        continue

    # Check if it aligns with book ecosystem
    is_aligned = any(kw in notes for kw in book_ecosystem_keywords) or any(kw in source.lower() for kw in book_ecosystem_keywords)
    
    if not is_aligned:
        continue

    # Check if it's already in manifest
    found_in_manifest = False
    for eid in existing_ids:
        # Check if source is a substring of the eid (to catch things like Source_Person)
        if source.lower() in eid.lower():
            found_in_manifest = True
            break
            
    if not found_in_manifest:
        candidates.append(entry)

print(f"Found {len(candidates)} high-quality candidates.")
for c in candidates[:60]:
    print(f"{c['source']}|{c.get('wd_property', 'N/A')}|{c.get('endpoint_kind', 'N/A')}|{c.get('notes', '').replace('|', ' ')[:100]}")

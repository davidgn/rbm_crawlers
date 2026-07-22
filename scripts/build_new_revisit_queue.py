import csv
import re
from pathlib import Path

# 1. Parse all spiders in src/ to find their territories
spider_dir = Path("src")
territory_to_spiders = {}

territory_re_double = re.compile(r'territory\s*=\s*"([^"\n]+)"')
territory_re_single = re.compile(r"territory\s*=\s*'([^'\n]+)'")

for p in spider_dir.glob("*_spider.py"):
    try:
        content = p.read_text(encoding="utf-8")
        match = territory_re_double.search(content) or territory_re_single.search(content)
        if match:
            territory = match.group(1).strip()
            territory_to_spiders.setdefault(territory, []).append(p.name)
    except Exception as e:
        print(f"Error reading {p}: {e}")

# 2. Read the original revisit queue
queue_path = Path("data/rbm_revisit_queue_2026-05-06_pass217_russia_final_saturation_cleanup.csv")
with open(queue_path, "r", encoding="utf-8") as f:
    reader = csv.reader(f)
    header = next(reader)
    rows = list(reader)

# 3. Build the new revisit queue rows
new_rows = []
for row in rows:
    if not row:
        continue
    territory = row[0].strip()
    status = row[1].strip()
    priority = row[2].strip()
    scope = row[3].strip()
    reason = row[4].strip()

    matched_spiders = []

    # Special composite mappings
    if territory == "Central Asia":
        matched_spiders = (
            territory_to_spiders.get("Kyrgyzstan", [])
            + territory_to_spiders.get("Tajikistan", [])
            + territory_to_spiders.get("Turkmenistan", [])
            + territory_to_spiders.get("Uzbekistan", [])
        )
    elif territory == "Israel / Palestine":
        matched_spiders = territory_to_spiders.get("Israel", []) + territory_to_spiders.get("Palestine", [])
    elif territory == "Cape Verde / Cabo Verde":
        matched_spiders = territory_to_spiders.get("Cape Verde", [])
    elif territory == "Somalia / Somaliland":
        matched_spiders = territory_to_spiders.get("Somalia", [])
    elif territory == "Western Sahara / Sahrawi market surface":
        matched_spiders = territory_to_spiders.get("Western Sahara / Sahrawi market surface", [])
    elif territory == "Côte d'Ivoire":
        matched_spiders = territory_to_spiders.get("Côte d'Ivoire", [])
    elif territory == "São Tomé and Príncipe":
        matched_spiders = territory_to_spiders.get("São Tomé and Príncipe", [])
    else:
        matched_spiders = territory_to_spiders.get(territory, [])

    if matched_spiders:
        # Check if status is an open/candidate status that should be resolved by the active spiders
        if any(k in status.lower() for k in ("open", "revisit")) and not any(k in status.lower() for k in ("closed", "resolved", "saturated", "only")):
            status = "resolved_pass220_active_spiders_built"
            reason = f"Pass220 successfully resolved and built active spiders: {', '.join(matched_spiders)}. " + reason

    new_rows.append([territory, status, priority, scope, reason])

# 4. Write the new revisit queue
new_queue_path = Path("data/rbm_revisit_queue_post_pass220.csv")
with open(new_queue_path, "w", newline="", encoding="utf-8") as f:
    writer = csv.writer(f, lineterminator="\n")
    writer.writerow(header)
    writer.writerows(new_rows)

print(f"Successfully generated new revisit queue at {new_queue_path}")
print(f"Total rows: {len(new_rows)}")

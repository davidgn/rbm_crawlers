import json
import glob
from pathlib import Path
from collections import Counter
from datetime import datetime

DATA_DIR = Path('/home/davidgn/active_repos/rbm_crawlers/src/data')
EXPORT_FILE = DATA_DIR / 'master_export.jsonl'
REPORT_FILE = DATA_DIR / 'master_export_report.json'

def main():
    print("Starting Master Export...")
    all_files = glob.glob(str(DATA_DIR / '*_ai_extracted.jsonl'))
    
    total_records = 0
    platform_counts = Counter()
    language_counts = Counter()
    territory_counts = Counter()
    
    with open(EXPORT_FILE, 'w') as outfile:
        for file_path in all_files:
            print(f"Processing {file_path}...")
            with open(file_path, 'r') as infile:
                for line in infile:
                    if not line.strip():
                        continue
                    try:
                        record = json.loads(line)
                        # Write to master file
                        outfile.write(json.dumps(record, ensure_ascii=False) + '\\n')
                        
                        total_records += 1
                        platform_counts[record.get('platform', 'Unknown')] += 1
                        language_counts[record.get('detected_language', 'Unknown')] += 1
                        territory_counts[record.get('territory', 'Unknown')] += 1
                        
                    except json.JSONDecodeError:
                        print(f"Warning: Could not decode line in {file_path}")

    report = {
        "export_date": datetime.utcnow().isoformat() + "Z",
        "total_records": total_records,
        "platform_breakdown": dict(platform_counts),
        "language_breakdown": dict(language_counts),
        "territory_breakdown": dict(territory_counts)
    }

    with open(REPORT_FILE, 'w') as f:
        json.dump(report, f, indent=2)

    print(f"\\nMaster Export Complete! {total_records} total records.")
    print(f"Export saved to: {EXPORT_FILE}")
    print(f"Report saved to: {REPORT_FILE}")

if __name__ == "__main__":
    main()

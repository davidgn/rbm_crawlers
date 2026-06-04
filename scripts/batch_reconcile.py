import json
import requests
import time
import argparse
from pathlib import Path
from typing import Any

RECON_URL = "http://127.0.0.1:5001/api/v1/reconcile"

class BatchReconciler:
    def __init__(self, batch_size: int = 10):
        self.batch_size = batch_size

    def reconcile_batch(self, batch: list[dict[str, Any]], type_id: str) -> list[dict[str, Any]]:
        queries = {}
        for i, item in enumerate(batch):
            # Prioritize title for matching
            query_text = item.get("title") or item.get("name") or ""
            if not query_text: continue
            
            queries[f"q{i}"] = {
                "query": query_text,
                "type": type_id,
                "limit": 3
            }
            
        if not queries:
            return batch

        try:
            r = requests.post(RECON_URL, data={"queries": json.dumps(queries)}, timeout=30)
            if r.status_code == 200:
                results = r.json()
                for i, item in enumerate(batch):
                    res = results.get(f"q{i}", {}).get("result", [])
                    if res:
                        # Pick the top match
                        top = res[0]
                        item["qid"] = top["id"]
                        item["recon_name"] = top["name"]
                        item["recon_score"] = top["score"]
            else:
                print(f"Error: HTTP {r.status_code}")
        except Exception as e:
            print(f"Reconciliation request failed: {e}")
            
        return batch

    def process_file(self, input_path: Path, type_id: str = "Wikidata_Organization_SPARQL"):
        output_path = input_path.with_suffix(".enriched.jsonl")
        records = []
        
        print(f"Processing {input_path.name}...")
        
        with open(input_path, "r", encoding="utf-8") as f:
            for line in f:
                try:
                    records.append(json.loads(line))
                except: continue
        
        total = len(records)
        enriched_count = 0
        
        with open(output_path, "w", encoding="utf-8") as f:
            for i in range(0, total, self.batch_size):
                batch = records[i:i + self.batch_size]
                enriched_batch = self.reconcile_batch(batch, type_id)
                for item in enriched_batch:
                    if item.get("qid"):
                        enriched_count += 1
                    f.write(json.dumps(item, ensure_ascii=False) + "\n")
                
                if (i // self.batch_size) % 5 == 0:
                    print(f" Progress: {min(i + self.batch_size, total)}/{total} records...")
                
                time.sleep(0.5) # Jitter to be kind to local Flask
                
        print(f"Done! Saved to {output_path.name}")
        print(f"Enriched {enriched_count}/{total} records with Wikidata QIDs.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("file", help="Path to JSONL file")
    parser.add_argument("--type", default="Wikidata_Organization_SPARQL", help="Reconciliation type ID")
    args = parser.parse_args()
    
    reconciler = BatchReconciler(batch_size=20)
    reconciler.process_file(Path(args.file), type_id=args.type)

import json
import os
import glob

def inspect_json(filepath):
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            data = json.load(f)
        print(f"=== {filepath} ===")
        print("Type:", type(data))
        if isinstance(data, list):
            print("Length:", len(data))
            if len(data) > 0:
                print("Sample item keys:", data[0].keys() if isinstance(data[0], dict) else type(data[0]))
                print("Sample item:", str(data[0])[:200])
        elif isinstance(data, dict):
            print("Keys:", list(data.keys())[:10])
            sample_key = list(data.keys())[0]
            print(f"Sample val for '{sample_key}':", str(data[sample_key])[:200])
    except Exception as e:
        print(f"Error reading {filepath}: {e}")

for name in ["smoke_results.json", "ucp_sweep_results.json", "test_sweep.json", "ucp_sweep.json", "test.json"]:
    p = os.path.join("/opt/repos/rbm_crawlers", name)
    if os.path.exists(p):
        inspect_json(p)

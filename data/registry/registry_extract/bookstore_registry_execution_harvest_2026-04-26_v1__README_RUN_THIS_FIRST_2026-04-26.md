# Resume / run instructions

Install dependencies:

```bash
python3 -m pip install -r requirements.txt
```

Run the first executable harvest queue:

```bash
python3 run_first_executable_harvest_queue_selfcontained.py
```

Outputs will be written under:

```text
runs/<UTC timestamp>/
```

Review, in order:

1. `runs/<timestamp>/first_executable_harvest_queue_results.csv`
2. `runs/<timestamp>/logs/*.stderr.txt`
3. `runs/<timestamp>/mexico_sic/download_manifest.csv`
4. Any normalized CSVs with row counts greater than zero

Promotion rule: do not promote a source from probe to harvested unless its raw files, normalized CSV, and hash/download manifest are present.

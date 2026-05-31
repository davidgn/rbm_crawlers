# README — run this first in a network-enabled runtime

This package is a probe/checkpoint, not a full harvest.

To execute the first public-page harvest pass:

```bash
python3 -m pip install requests beautifulsoup4
python3 run_tranche2_public_page_harvest.py --outdir tranche2_harvest_run_2026-04-26
```

Then check:
- `download_manifest.json`
- `*_staging_rows.csv`
- raw HTML files under `raw/`

Do not promote rows until the raw files exist and their hashes are recorded.

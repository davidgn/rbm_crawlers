#!/bin/bash
export WORKERS=40
export LIMIT=20

echo "Running text sweep: University of Chicago Press"
export RBM_SEARCH_TERM="University of Chicago Press"
python3 scripts/smoke_spider_matrix.py src/*_spider.py --limit-pages 3 --limit-items $LIMIT --workers $WORKERS --json-out ucp_sweep_4.json
python3 scripts/consolidate_to_sqlite.py

echo "Running text sweep: Univ of Chicago Pr"
export RBM_SEARCH_TERM="Univ of Chicago Pr"
python3 scripts/smoke_spider_matrix.py src/*_spider.py --limit-pages 2 --limit-items $LIMIT --workers $WORKERS --json-out ucp_sweep_alias1.json
python3 scripts/consolidate_to_sqlite.py

echo "Running text sweep: UChicago Press"
export RBM_SEARCH_TERM="UChicago Press"
python3 scripts/smoke_spider_matrix.py src/*_spider.py --limit-pages 2 --limit-items $LIMIT --workers $WORKERS --json-out ucp_sweep_alias2.json
python3 scripts/consolidate_to_sqlite.py

echo "Running text sweep: Chicago Manual of Style"
export RBM_SEARCH_TERM="Chicago Manual of Style"
python3 scripts/smoke_spider_matrix.py src/*_spider.py --limit-pages 2 --limit-items $LIMIT --workers $WORKERS --json-out ucp_sweep_5.json
python3 scripts/consolidate_to_sqlite.py

echo "All sweeps complete. Consolidating one last time."
python3 scripts/consolidate_to_sqlite.py
python3 scripts/rbm_search.py "University of Chicago" > sweep_final_results.txt
python3 scripts/rbm_search.py "UChicago" >> sweep_final_results.txt
python3 scripts/rbm_search.py "0226" >> sweep_final_results.txt

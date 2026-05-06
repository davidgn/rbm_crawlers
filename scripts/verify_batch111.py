import sys
import os
sys.path.append('/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service')
from lib.strategies_batch111 import process_batch111_query

test_query = {
    "q1": {"query": "Mann", "type": "Work"}
}

print("Testing DNB...")
res_dnb = process_batch111_query(test_query, {}, "DNB_BIB")
print(res_dnb)

print("\nTesting BSB...")
res_bsb = process_batch111_query(test_query, {}, "BSB")
print(res_bsb)

print("\nTesting SBB...")
res_sbb = process_batch111_query(test_query, {}, "SBB")
print(res_sbb)

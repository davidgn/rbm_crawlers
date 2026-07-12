from lib.strategies_batch112 import process_batch112_query

test_query = {
    "q1": {"query": "Gold Rush", "type": "Work"}
}

print("Testing California...")
res_ca = process_batch112_query(test_query, {}, "CSL_CA")
print(res_ca)

print("\nTesting K10plus...")
res_k10 = process_batch112_query(test_query, {}, "K10PLUS")
print(res_k10)

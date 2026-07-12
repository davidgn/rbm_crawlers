from lib.strategies_batch117 import process_batch117_query

test_query = {
    "q1": {"query": "Borges", "type": "Work"}
}

print("Testing Brazil...")
res_br = process_batch117_query(test_query, {}, "BRAZIL")
print(res_br)

print("\nTesting LIBRIS...")
res_libris = process_batch117_query(test_query, {}, "LIBRIS_SE")
print(res_libris)

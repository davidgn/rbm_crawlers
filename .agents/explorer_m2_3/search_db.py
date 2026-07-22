import sqlite3

def search_db():
    conn = sqlite3.connect("src/data/regional_book_marketplaces.db")
    cursor = conn.cursor()
    
    # Get all tables
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = [row[0] for row in cursor.fetchall()]
    print(f"Tables in database: {tables}")
    
    search_terms = ['kclsu', 'kcl_student_union', 'kcl', 'student_union']
    found = False
    
    for table in tables:
        # Get columns
        cursor.execute(f"PRAGMA table_info({table});")
        columns = [row[1] for row in cursor.fetchall()]
        
        # Build query to search all columns
        conditions = []
        for col in columns:
            for term in search_terms:
                conditions.append(f'"{col}" LIKE "%{term}%"')
        
        if conditions:
            query = f"SELECT * FROM {table} WHERE " + " OR ".join(conditions)
            try:
                cursor.execute(query)
                results = cursor.fetchall()
                if results:
                    print(f"\nFound matches in table '{table}':")
                    for row in results[:10]:
                        print(row)
                    found = True
            except Exception as e:
                print(f"Error querying table {table}: {e}")
                
    if not found:
        print("\nNo matches found in the database for search terms.")
        
    conn.close()

if __name__ == '__main__':
    search_db()

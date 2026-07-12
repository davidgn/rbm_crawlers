import sqlite3
import re
from pathlib import Path

# Approximate Exchange Rates (June 2026 / Recent)
EXCHANGE_RATES = {
    "TWD": 32.5,
    "THB": 36.5,
    "VND": 1.0, # Tiki prices are often in thousands but represented as 92.000 (meaning 92,000 VND)
    "IDR": 1.0, # Similar for IDR
    "KZT": 450.0,
    "SAR": 3.75,
    "RM": 4.7,
    "MYR": 4.7,
    "CNY": 7.2,
    "RMB": 7.2,
    "¥": 7.2,
    "MAD": 10.0,
    "NOK": 11.0,
    "kr": 11.0,
    "NZD": 1.66,
    "USD": 1.0,
    "฿": 36.5,
    "₫": 1.0, # Handled specially
    "Rp": 1.0, # Handled specially
    "₸": 450.0,
    "$": 1.0,
    "INR": 83.5,
    "AUD": 1.5,
    "CLP": 950.0,
    "EUR": 0.92,
    "PLN": 4.0,
    "GHS": 14.5,
    "PKR": 278.0,
    "LYD": 4.8,
    "SYP": 13000.0,
    "EGP": 47.0,
    "DOP": 59.0,
    "JPY": 155.0
}

VND_RATE = 25400.0
IDR_RATE = 16200.0

def normalize_prices():
    ROOT = Path(__file__).resolve().parents[1]
    db_path = ROOT / "src" / "data" / "regional_book_marketplaces.db"
    if not db_path.exists():
        print(f"Database {db_path} not found.")
        return

    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Add USD column if not exists
    try:
        cursor.execute("ALTER TABLE listings ADD COLUMN price_usd REAL")
    except sqlite3.OperationalError:
        pass

    cursor.execute("SELECT id, price, platform, territory FROM listings WHERE price IS NOT NULL")
    rows = cursor.fetchall()
    
    print(f"--- Normalizing {len(rows)} prices ---")
    
    updated_count = 0
    for row_id, price_str, platform, territory in rows:
        usd_val = None
        
        # Clean: Tiki/Gramedia use '.' for thousands, e.g., 92.000
        # If it looks like NNN.000, it's likely thousands
        clean_price = price_str.replace(',', '')
        
        rate = None
        if "Tiki" in platform or territory == "Vietnam":
            rate = VND_RATE
            # Special handling for Tiki 92.000 -> 92000
            if re.match(r'^\d+\.\d{3}$', clean_price):
                clean_price = clean_price.replace('.', '')
        elif "Gramedia" in platform or territory == "Indonesia":
            rate = IDR_RATE
            if re.match(r'^\d+\.\d{3}$', clean_price):
                clean_price = clean_price.replace('.', '')
        else:
            for symbol, r in EXCHANGE_RATES.items():
                if symbol in clean_price:
                    rate = r
                    break
            if not rate:
                if territory == "Taiwan": rate = EXCHANGE_RATES["TWD"]
                elif territory == "Thailand": rate = EXCHANGE_RATES["THB"]
                elif territory == "Kazakhstan": rate = EXCHANGE_RATES["KZT"]
                elif territory == "Middle East": rate = EXCHANGE_RATES["SAR"]
                elif "Malaysia" in territory: rate = EXCHANGE_RATES["MYR"]

        if rate:
            # First, handle the incorrectly hardcoded INR issue for Dangdang/LivreMoi/Finn
            if clean_price.startswith("INR "):
                if territory == "China":
                    rate = 7.2
                elif territory == "Morocco":
                    rate = 10.0
                elif territory == "Norway":
                    rate = 11.0

            nums = re.findall(r'[\d.]+', clean_price)
            if nums:
                try:
                    local_val = float(nums[0])
                    usd_val = round(local_val / rate, 2)
                except ValueError:
                    pass

        if usd_val is not None:
            cursor.execute("UPDATE listings SET price_usd = ? WHERE id = ?", (usd_val, row_id))
            updated_count += 1

    conn.commit()
    conn.close()
    print(f"Normalization complete. Updated {updated_count} records.")

if __name__ == "__main__":
    normalize_prices()

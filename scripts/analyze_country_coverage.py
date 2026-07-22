import os
import re
import ast

def get_country_from_file(filepath):
    """Attempt to extract territory/country from the spider class definition."""
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
            
        # Try to find territory="..."
        match = re.search(r'territory\s*=\s*["\']([^"\']+)["\']', content)
        if match:
            return match.group(1)
            
        # Try to infer from filename suffix (e.g., _uk_spider.py -> UK)
        basename = os.path.basename(filepath)
        match = re.search(r'_([a-z]{2})_spider\.py$', basename)
        if match:
            return match.group(1).upper()
            
    except Exception:
        pass
    return None

def analyze_coverage():
    src_dir = "/opt/repos/rbm_crawlers/src"
    country_counts = {}
    total_spiders = 0
    
    for filename in os.listdir(src_dir):
        if filename.endswith("spider.py"):
            filepath = os.path.join(src_dir, filename)
            country = get_country_from_file(filepath)
            
            if not country:
                country = "Global/Unknown"
                
            country_counts[country] = country_counts.get(country, 0) + 1
            total_spiders += 1
            
    # Normalize some common names
    norm_map = {
        "UK": "United Kingdom",
        "US": "United States",
        "USA": "United States",
        "ZA": "South Africa",
        "DE": "Germany",
        "FR": "France",
        "IT": "Italy",
        "ES": "Spain",
        "JP": "Japan",
        "CN": "China",
        "IN": "India",
        "AU": "Australia",
        "NZ": "New Zealand",
        "AE": "UAE",
        "EG": "Egypt",
        "SA": "Saudi Arabia",
        "KE": "Kenya",
        "NG": "Nigeria",
        "BR": "Brazil",
        "MX": "Mexico",
        "AR": "Argentina",
        "CO": "Colombia",
        "CL": "Chile",
        "PE": "Peru",
        "ID": "Indonesia",
        "MY": "Malaysia",
        "PH": "Philippines",
        "SG": "Singapore",
        "TH": "Thailand",
        "VN": "Vietnam",
        "RU": "Russia",
        "TR": "Turkey",
        "KR": "South Korea",
        "PK": "Pakistan",
        "BD": "Bangladesh",
        "ZA": "South Africa",
        "GH": "Ghana",
        "DZ": "Algeria",
        "MA": "Morocco",
        "PL": "Poland",
        "NL": "Netherlands",
        "SE": "Sweden",
        "FI": "Finland",
        "NO": "Norway",
        "DK": "Denmark",
        "IE": "Ireland",
        "GR": "Greece",
        "PT": "Portugal",
        "RO": "Romania",
        "BG": "Bulgaria",
        "HU": "Hungary",
        "CZ": "Czech Republic",
        "SK": "Slovakia",
        "AT": "Austria",
        "CH": "Switzerland",
        "BE": "Belgium",
        "LV": "Latvia",
        "LT": "Lithuania",
        "EE": "Estonia",
        "HR": "Croatia",
        "SI": "Slovenia",
        "RS": "Serbia",
        "BA": "Bosnia and Herzegovina",
        "ME": "Montenegro",
        "MK": "North Macedonia",
        "AL": "Albania",
        "MD": "Moldova",
        "BY": "Belarus",
        "UA": "Ukraine",
        "KZ": "Kazakhstan",
        "UZ": "Uzbekistan",
        "KG": "Kyrgyzstan",
        "TJ": "Tajikistan",
        "TM": "Turkmenistan",
        "AF": "Afghanistan",
        "IR": "Iran",
        "IQ": "Iraq",
        "SY": "Syria",
        "LB": "Lebanon",
        "JO": "Jordan",
        "IL": "Israel",
        "KW": "Kuwait",
        "QA": "Qatar",
        "BH": "Bahrain",
        "OM": "Oman",
        "YE": "Yemen",
        "TW": "Taiwan",
        "HK": "Hong Kong",
        "MO": "Macau",
        "LK": "Sri Lanka",
        "NP": "Nepal",
        "MM": "Myanmar",
        "KH": "Cambodia",
        "LA": "Laos",
        "MN": "Mongolia",
        "SN": "Senegal",
        "ML": "Mali",
        "CI": "Ivory Coast",
        "CM": "Cameroon",
        "GA": "Gabon",
        "ZW": "Zimbabwe",
        "ZM": "Zambia",
        "MZ": "Mozambique",
        "AO": "Angola",
        "UG": "Uganda",
        "TZ": "Tanzania",
        "RW": "Rwanda",
        "BI": "Burundi",
        "ET": "Ethiopia",
        "SD": "Sudan",
        "SS": "South Sudan",
        "SO": "Somalia",
        "DJ": "Djibouti",
        "ER": "Eritrea",
        "MG": "Madagascar",
        "MU": "Mauritius",
        "SC": "Seychelles",
        "KM": "Comoros",
        "HT": "Haiti",
        "JM": "Jamaica",
        "TT": "Trinidad and Tobago",
        "CU": "Cuba",
        "DO": "Dominican Republic",
        "PR": "Puerto Rico",
        "PA": "Panama",
        "CR": "Costa Rica",
        "NI": "Nicaragua",
        "SV": "El Salvador",
        "GT": "Guatemala",
        "HN": "Honduras",
        "BZ": "Belize",
        "UY": "Uruguay",
        "PY": "Paraguay",
        "BO": "Bolivia",
        "EC": "Ecuador",
        "VE": "Venezuela",
        "GY": "Guyana",
        "SR": "Suriname",
        "GF": "French Guiana"
    }
    
    normalized_counts = {}
    for c, count in country_counts.items():
        name = norm_map.get(c.upper(), c)
        if name.lower() == "uk": name = "United Kingdom"
        if name.lower() == "us": name = "United States"
        normalized_counts[name] = normalized_counts.get(name, 0) + count
        
    print(f"Total Spiders Analyzed: {total_spiders}")
    print("\n--- Current Coverage by Country ---")
    for c, count in sorted(normalized_counts.items(), key=lambda x: x[1], reverse=True):
        if count > 0:
            print(f"{c}: {count}")

if __name__ == "__main__":
    analyze_coverage()

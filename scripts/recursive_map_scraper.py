#!/usr/bin/env python3
"""
Recursive Hyper-Linguistic Maps Scraper (Phases 1-3)
---------------------------------------------------
Queries OpenStreetMap (Overpass API) for independent bookstores using
bounding box iteration. Filters out known chains and stores already in
the canonical site registry. Uses Website Hunter fallback for missing sites.
"""

import sys
import time
import requests
import argparse
import pandas as pd
from urllib.parse import urlparse
from website_hunter import hunt_website

# Global Settings
OVERPASS_ENDPOINTS = [
    "https://overpass-api.de/api/interpreter",
    "https://overpass.kumi.systems/api/interpreter",
    "https://overpass.openstreetmap.ru/cgi/interpreter",
]

BLACKLISTED_CHAINS = {
    "waterstones", "fnac", "gandhi", "saraiva", "yodobashi",
    "kinokuniya", "barnes & noble", "d&r", "idefix", "kitapyurdu",
    "public", "ianos", "evripidis", "ali and nino", "biblusi"
}

def load_canonical_registry(csv_path):
    known_domains = set()
    try:
        df = pd.read_csv(csv_path)
        for url in df['url'].dropna():
            domain = urlparse(url).netloc.lower().replace('www.', '')
            known_domains.add(domain)
    except Exception as e:
        print(f"[!] Warning: Could not load canonical registry: {e}")
    return known_domains

def query_overpass(bbox, endpoint, proxy=None):
    min_lat, min_lon, max_lat, max_lon = bbox
    query = f"""
    [out:json][timeout:25];
    (
      node["shop"="books"]({min_lat},{min_lon},{max_lat},{max_lon});
      way["shop"="books"]({min_lat},{min_lon},{max_lat},{max_lon});
    );
    out center;
    """
    
    headers = {'User-Agent': 'Antigravity Hyper-Linguistic Maps Scraper / 1.0'}
    proxies = {'http': proxy, 'https': proxy} if proxy else None
    
    try:
        r = requests.post(endpoint, data={"data": query}, headers=headers, proxies=proxies, timeout=30)
        if r.status_code == 200:
            return r.json().get('elements', [])
        elif r.status_code == 429:
            print(f"[!] Rate limited on {endpoint}")
        elif r.status_code == 406:
            print(f"[!] 406 Not Acceptable (IP Block) on {endpoint}")
        else:
            print(f"[!] Error {r.status_code} on {endpoint}: {r.text[:100]}")
    except requests.exceptions.RequestException as e:
        print(f"[!] Connection error on {endpoint}: {e}")
    
    return None

def fetch_poi_data(bbox, proxy=None):
    for ep in OVERPASS_ENDPOINTS:
        print(f"[*] Querying {ep} for bbox {bbox}...")
        elements = query_overpass(bbox, ep, proxy)
        if elements is not None:
            return elements
        time.sleep(2)
    print("[!] All Overpass endpoints failed or blocked. Use --proxy.")
    return []

def filter_bookstores(elements, known_domains):
    candidates = []
    for el in elements:
        tags = el.get('tags', {})
        name = tags.get('name', tags.get('name:en', '')).strip()
        website = tags.get('website', tags.get('contact:website', '')).strip()
        
        if not name:
            continue
        if any(chain in name.lower() for chain in BLACKLISTED_CHAINS):
            continue
            
        if website:
            domain = urlparse(website).netloc.lower().replace('www.', '')
            if domain in known_domains:
                continue
                
        lat = el.get('lat', el.get('center', {}).get('lat'))
        lon = el.get('lon', el.get('center', {}).get('lon'))
        
        candidates.append({
            'name': name,
            'website': website,
            'lat': lat,
            'lon': lon,
            'osm_id': el.get('id')
        })
    return candidates

def main():
    parser = argparse.ArgumentParser(description="Recursive Hyper-Linguistic Maps Scraper")
    parser.add_argument("--bbox", required=True, help="Bounding box: min_lat,min_lon,max_lat,max_lon")
    parser.add_argument("--registry", default="../data/rbm_canonical_site_registry_2026-05-06_pass217_russia_final_saturation_cleanup.csv", help="Path to registry")
    parser.add_argument("--proxy", default=None, help="Proxy string (e.g., http://user:pass@IP:PORT)")
    
    args = parser.parse_args()
    try:
        bbox_parts = [float(x) for x in args.bbox.split(',')]
        if len(bbox_parts) != 4:
            raise ValueError
    except ValueError:
        print("Invalid bbox format. Use: min_lat,min_lon,max_lat,max_lon")
        sys.exit(1)
        
    print(f"[*] Loading registry from {args.registry}...")
    known_domains = load_canonical_registry(args.registry)
    print(f"[*] Loaded {len(known_domains)} known domains.")
    
    elements = fetch_poi_data(bbox_parts, args.proxy)
    if not elements:
        print("[-] No elements found or API failed.")
        sys.exit(0)
        
    print(f"[*] Extracted {len(elements)} raw 'shop=books' POIs from OSM.")
    candidates = filter_bookstores(elements, known_domains)
    print(f"[*] After filtering chains and known domains, {len(candidates)} candidates remain.")
    
    for c in candidates:
        if c['website']:
            print(f"[NEW WEBSITE FOUND] {c['name']} -> {c['website']} (OSM: {c['osm_id']})")
        else:
            print(f"[MISSING WEBSITE] {c['name']} (Lat: {c['lat']}, Lon: {c['lon']}) -> Running Website Hunter...")
            hunted_url = hunt_website(c['name'], c['lat'], c['lon'], proxy=args.proxy)
            if hunted_url:
                print(f"    -> [HUNTER SUCCESS] Found possible website: {hunted_url}")
            else:
                print(f"    -> [HUNTER FAILED] No obvious URL found.")
            time.sleep(1) # respectful delay

if __name__ == "__main__":
    main()

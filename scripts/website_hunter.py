#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup
import time
import urllib.parse
import re

def hunt_website(name, lat, lon, proxy=None):
    """
    Given a bookstore name and location, queries DuckDuckGo HTML 
    to find the most likely canonical website.
    """
    # Create a localized query string
    # We use lat/lon to approx city, but for now just query the name + "bookstore"
    query = f'"{name}" bookstore OR bookshop OR publisher'
    url = f"https://html.duckduckgo.com/html/?q={urllib.parse.quote(query)}"
    
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
        'Accept-Language': 'en-US,en;q=0.5'
    }
    
    proxies = {'http': proxy, 'https': proxy} if proxy else None
    
    try:
        r = requests.get(url, headers=headers, proxies=proxies, timeout=15)
        if r.status_code == 200:
            soup = BeautifulSoup(r.text, 'html.parser')
            for a in soup.find_all('a', class_='result__url'):
                href = a.get('href', '').strip()
                if href and 'duckduckgo.com' not in href:
                    # Filter out obvious social media/directory profiles unless it's their only site
                    if any(x in href for x in ['facebook.com', 'instagram.com', 'yellowpages', 'yelp', 'tripadvisor']):
                        continue
                    return href
        elif r.status_code == 403:
            print(f"    [!] Website Hunter blocked by DDG (403) for '{name}'. Use residential proxy.")
    except Exception as e:
        print(f"    [!] Website Hunter error for '{name}': {e}")
        
    return None

if __name__ == "__main__":
    # Test
    print("Testing hunter:", hunt_website("Atlantis Books Santorini", 36.4618, 25.3753))

import json
import random
import re
import time
from typing import Any
from urllib.parse import urljoin
import httpx
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class McitOpacSpider(BaseSpider):
    """
    Crawls the MCIT e-Granthalaya shared catalog in India.
    Extracts library holdings and book metadata.
    """
    def __init__(self, search_term: str = "computer", limit_pages: int = 1):
        super().__init__(platform_name="MCIT OPAC", territory="India")
        self.base_url = "https://eg4.nic.in/OPAC/Default.aspx?CL_NAME=MCIT&LIB_CODE=NIELITAGT"
        self.search_term = search_term
        self.limit_pages = limit_pages
        self.client = httpx.Client(verify=False, timeout=45.0)

    def _get_robust_response(self, url: str, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                resp = self.client.get(url)
                if resp.status_code in (403, 429, 500, 502, 503, 504):
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    def run(self):
        self.logger.info(f"Starting MCIT OPAC spider for '{self.search_term}'")
        try:
            response = self._get_robust_response(self.base_url)
            if not response:
                return
            response.raise_for_status()
            fields = self._form_fields(response.text)
            
            fields.update({
                "DDL_Materials": "Books",
                "txt_Search": self.search_term,
                "DDL_Field": "ALL",
                "DDL_Boolean": "LIKE",
                "DDL_OrderBy": "TITLE",
                "DDL_SortBy": "ASC",
                "DDL_Pages": "100", # Max results per page
                "Basic_Search_Bttn": "Search",
                "Accordion2_AccordionExtender_ClientState": "2",
                "Accordion_SearchParameters_AccordionExtender_ClientState": "1",
                "Accordion1_AccordionExtender_ClientState": "2",
                "CB_AllLibraries": "on",
                "DDL_Library": "All Libraries"
            })
            
            result = None
            for attempt in range(3):
                try:
                    result = self.client.post(self.base_url, data=fields)
                    if result.status_code in (403, 429, 500, 502, 503, 504):
                        time.sleep(2 ** attempt)
                        continue
                    break
                except Exception as e:
                    time.sleep(2 ** attempt)

            if not result:
                return
            result.raise_for_status()
            records = self._records(result.text)
            
            self.logger.info(f"Found {len(records)} records in OPAC")
            
            for record in records:
                catalog_id = record.get("catalog_id")
                if not catalog_id:
                    continue
                    
                item = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=record.get("title", ""),
                    author=record.get("authors", ""),
                    isbn=record.get("isbn", ""),
                    listing_url=urljoin(self.base_url, f"Details.aspx?ctr={catalog_id}&isChecked=false&cluster=MCIT&library=NIELITAGT"),
                    price=None, # It's a library, no numeric price
                    price_currency="INR",
                )
                item = self.scavenge_metadata(result.text, item)
                self.save_item(item)
                
        except Exception as e:
            self.logger.error(f"MCIT OPAC error: {e}")

    @staticmethod
    def _form_fields(html: str) -> dict[str, str]:
        soup = BeautifulSoup(html, "html.parser")
        fields = {}
        for input_tag in soup.find_all("input"):
            name = input_tag.get("name")
            if not name:
                continue
            input_type = (input_tag.get("type") or "").lower()
            if input_type in {"submit", "image", "button"}:
                continue
            if input_type in {"checkbox", "radio"} and not input_tag.has_attr("checked"):
                continue
            fields[name] = input_tag.get("value", "on")
        for select in soup.find_all("select"):
            name = select.get("name")
            if not name:
                continue
            option = select.find("option", selected=True) or select.find("option")
            fields[name] = option.get("value", "") if option else ""
        return fields

    @staticmethod
    def _records(html: str) -> list[dict[str, Any]]:
        soup = BeautifulSoup(html, "html.parser")
        records = {}
        for hidden in soup.select('input[id^="Repeater1_HiddenField1_"]'):
            suffix = hidden["id"].rsplit("_", 1)[-1]
            catalog_id = hidden.get("value", "")
            records[suffix] = {"catalog_id": catalog_id}

        label_map = {
            "Lbl_Title": "title",
            "Lbl_Authors": "authors",
            "ISBNLbl": "isbn",
        }
        for span in soup.select('span[id^="Repeater1_"]'):
            span_id = span.get("id", "")
            suffix = span_id.rsplit("_", 1)[-1]
            if suffix not in records:
                continue
            for source, target in label_map.items():
                if f"_{source}_" in span_id:
                    records[suffix][target] = " ".join(span.get_text(" ", strip=True).split())
                    break

        ordered = []
        for suffix in sorted(records, key=lambda value: int(value)):
            record = records[suffix]
            if record.get("catalog_id") and record.get("title"):
                ordered.append(record)
        return ordered

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="computer")
    args = parser.parse_args()
    McitOpacSpider(search_term=args.query).run()

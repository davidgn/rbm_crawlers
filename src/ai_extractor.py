import subprocess
import json
import logging
import re

from bs4 import BeautifulSoup

logger = logging.getLogger("AIExtractor")

PLATFORM_SELECTORS = {
    "Books.com.tw": {
        "title": "h1",
        "isbn": "li:contains('ISBN')",
        "price": ".price b",
        "author": "a[href*='search?author']"
    },
    "Kingstone.com.tw": {
        "title": "h1.pdnamebox",
        "isbn": "li:contains('ISBN')",
        "price": ".price_real",
        "author": "a[href*='search/author']"
    },
    "Naiin": {
        "title": ".product-title",
        "isbn": ".product-isbn",
        "price": ".product-price",
        "author": ".product-author"
    },
    "SE-ED": {
        "title": "h1",
        "isbn": "div:contains('ISBN')",
        "price": ".price-net",
    },
    "Tiki.vn": {
        "title": "h1",
        "isbn": "td:contains('ISBN')",
        "price": ".product-price__current-price",
        "author": "a[data-view-id*='author']"
    },
    "Gramedia": {
        "title": ".product-title",
        "isbn": "p:contains('ISBN')",
        "price": ".product-price",
        "author": ".product-author"
    }
}

def local_fallback_extract(html_content, platform=None):
    """
    Fallback extraction using BeautifulSoup when the AI API fails.
    Uses platform-specific selectors if available, otherwise general regex.
    """
    try:
        soup = BeautifulSoup(html_content, 'html.parser')
        result = {"extraction_method": "local_bs4_fallback"}

        # 1. Try Platform-Specific Selectors
        if platform and platform in PLATFORM_SELECTORS:
            sel = PLATFORM_SELECTORS[platform]
            for key, selector in sel.items():
                try:
                    el = soup.select_one(selector)
                    if el:
                        result[key] = el.get_text(strip=True)
                except:
                    pass

        # 2. General Fallback for missing fields
        if not result.get("title"):
            title_tag = soup.title.string.strip() if soup.title else None
            if title_tag:
                result["title"] = re.sub(r'\s*[-|]\s*.*$', '', title_tag)
            else:
                h1 = soup.find('h1')
                result["title"] = h1.get_text(strip=True) if h1 else "Unknown Title"

        if not result.get("isbn"):
            isbn_match = re.search(
                r"ISBN(?:-1[03])?\s*:?\s*((?:97[89][\d -]{10,16})|(?:[\dXx][\dXx -]{8,14}[\dXx]))",
                html_content,
                re.IGNORECASE,
            )
            if isbn_match:
                candidate = re.sub(r"[-\s]", "", isbn_match.group(1))
                if len(candidate) in {10, 13}:
                    result["isbn"] = candidate.upper()

        if not result.get("price"):
            price_match = re.search(r'(฿|TWD|RM|Rp|VND|\$)\s*([\d,.]+)', html_content)
            if price_match:
                result["price"] = f"{price_match.group(1)} {price_match.group(2)}"

        return result
    except Exception as e:
        logger.error(f"Fallback extraction failed: {e}")
        return None


def deep_extract(html_content, platform=None):
    """
    Call the bibliographic-parser subagent via Gemini CLI to extract structured data.
    Uses the non-interactive piped syntax with --skip-trust for automation.
    Falls back to local BS4 extraction if the AI quota is exceeded.
    """
    try:
        # Use a pipe to send HTML content directly to the gemini CLI
        # --skip-trust is used to bypass the interactive trust prompt in non-interactive mode.
        cmd = ["gemini", "--skip-trust", "-p", "@flash-preview-3 Extract structured bibliographic data from the following HTML. Return JSON only."]
        process = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        stdout, stderr = process.communicate(input=html_content)

        if process.returncode == 0:
            try:
                raw_out = stdout.strip()
                # Surgical extraction of JSON from markdown blocks (hex for backticks)
                backtick_block = "\x60\x60\x60"
                if f"{backtick_block}json" in raw_out:
                    raw_out = raw_out.split(f"{backtick_block}json")[1].split(backtick_block)[0].strip()
                elif backtick_block in raw_out:
                    raw_out = raw_out.split(backtick_block)[1].split(backtick_block)[0].strip()

                # Further cleanup
                if "{" in raw_out:
                    raw_out = raw_out[raw_out.find("{"):raw_out.rfind("}")+1]

                data = json.loads(raw_out)
                data["extraction_method"] = "gemini_ai"
                return data
            except json.JSONDecodeError:
                logger.error(f"Failed to decode AI output: {stdout}")
        else:
            logger.error(f"AI Extraction command failed: {stderr}")
            if "QUOTA_EXHAUSTED" in stderr or "TerminalQuotaError" in stderr or process.returncode != 0:
                logger.warning("AI Quota exhausted or command failed. Falling back to local BeautifulSoup parser.")
                return local_fallback_extract(html_content, platform)

    except Exception as e:
        logger.error(f"AI Extraction error: {e}")
        return local_fallback_extract(html_content, platform)

    return local_fallback_extract(html_content, platform)

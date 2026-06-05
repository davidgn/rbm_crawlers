import subprocess
import json
import logging
import re

from bs4 import BeautifulSoup

logger = logging.getLogger("AIExtractor")


def local_fallback_extract(html_content):
    """
    Fallback extraction using BeautifulSoup when the AI API fails.
    Extracts basic metadata to keep the pipeline moving.
    """
    try:
        soup = BeautifulSoup(html_content, 'html.parser')

        # Try to find common title tags
        title = None
        if soup.title:
            title = soup.title.string.strip()
            # Clean up common suffixes
            title = re.sub(r'\s*[-|]\s*.*$', '', title)

        if not title:
            h1 = soup.find('h1')
            if h1:
                title = h1.get_text(strip=True)

        # Try to find ISBN in text
        isbn = None
        isbn_match = re.search(r'(?:ISBN[-103]*?:?\s*)(97[89][- \d]{10,13}|[0-9X]{10})', html_content, re.IGNORECASE)
        if isbn_match:
            isbn = isbn_match.group(1).replace('-', '').replace(' ', '')

        # Try to find price
        price = None
        price_match = re.search(r'(฿|TWD|RM|Rp|VND|\$)\s*([\d,.]+)', html_content)
        if price_match:
            price = f"{price_match.group(1)} {price_match.group(2)}"

        return {
            "title": title or "Unknown Title",
            "isbn": isbn,
            "price": price,
            "extraction_method": "local_bs4_fallback"
        }
    except Exception as e:
        logger.error(f"Fallback extraction failed: {e}")
        return None


def deep_extract(html_content):
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

                return json.loads(raw_out)
            except json.JSONDecodeError:
                logger.error(f"Failed to decode AI output: {stdout}")
        else:
            logger.error(f"AI Extraction command failed: {stderr}")
            if "QUOTA_EXHAUSTED" in stderr or "TerminalQuotaError" in stderr or process.returncode != 0:
                logger.warning("AI Quota exhausted or command failed. Falling back to local BeautifulSoup parser.")
                return local_fallback_extract(html_content)

    except Exception as e:
        logger.error(f"AI Extraction error: {e}")
        return local_fallback_extract(html_content)

    return local_fallback_extract(html_content)

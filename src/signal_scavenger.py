import re
from typing import Any

# ISBN-13 usually starts with 978 or 979.
# ISBN-10 is 10 digits.
# This regex is improved to be more specific.
ISBN_PATTERN = re.compile(
    r"(?i)(?:ISBN(?:-1[03])?\s*[:#]?\s*)"
    r"((?:97[89][\s.-]?)?\d[\d\s.-]{7,20}[\dX])"
    r"|(\b97[89]\d{10}\b)"
)

# Year pattern: 1500-2029
YEAR_PATTERN = re.compile(r"\b(1[5-9]\d{2}|20[0-2]\d)\b")

EDITION_KEYWORDS = (
    "first edition", "1st edition", "first printing", "1st printing",
    "limited edition", "signed", "inscribed", "advance reader",
    "advanced reader", "uncorrected proof", "proof copy", "arc",
)
BINDING_KEYWORDS = (
    "hardcover", "paperback", "softcover", "cloth", "leather",
    "board book", "spiral bound",
)
LANGUAGE_KEYWORDS = (
    "english", "spanish", "french", "german", "italian", "portuguese",
    "russian", "chinese", "japanese", "korean", "arabic", "hindi", "bengali",
)

def clean_html(html: str) -> str:
    """Remove HTML tags and scripts/styles to avoid matching technical junk."""
    # Remove scripts and styles
    text = re.sub(r"(?is)<script.*?>.*?</script>", " ", html)
    text = re.sub(r"(?is)<style.*?>.*?</style>", " ", text)
    # Remove SVG paths which often contain 13-digit-like coordinates
    text = re.sub(r"(?is)<svg.*?>.*?</svg>", " ", text)
    # Remove all other tags
    text = re.sub(r"<.*?>", " ", text)
    # Collapse whitespace
    text = re.sub(r"\s+", " ", text)
    return text.strip()

def normalize_isbn(value: str) -> str | None:
    if not value: return None
    raw = re.sub(r"[^0-9Xx]", "", value).upper()
    if len(raw) in (10, 13):
        return raw
    return None

def extract_signals(text: str) -> dict[str, Any]:
    if not text:
        return {}
    
    # If the text looks like HTML, clean it
    if "<" in text and ">" in text:
        text = clean_html(text)
    
    lower = text.lower()
    
    # ISBN
    isbns = []
    for match in ISBN_PATTERN.finditer(text):
        # group 1 is the one with "ISBN" prefix, group 2 is the 978... fallback
        raw_val = match.group(1) or match.group(2)
        isbn = normalize_isbn(raw_val)
        if isbn and isbn not in isbns:
            isbns.append(isbn)
            
    # Years
    years = sorted({int(match.group(1)) for match in YEAR_PATTERN.finditer(text)})
    
    # Edition
    edition_flags = [kw for kw in EDITION_KEYWORDS if kw in lower]
    
    # Binding
    binding = None
    for kw in BINDING_KEYWORDS:
        if kw in lower:
            binding = kw.title()
            break
            
    # Language
    language = None
    # Look for "Language: English" style patterns
    match = re.search(r"(?i)language\s*[:#]\s*(\w+)", text)
    if match:
        language = match.group(1).title()
    else:
        for lang in LANGUAGE_KEYWORDS:
            if re.search(rf"\b{lang}\b", lower):
                language = lang.title()
                break
                
    # Publisher
    publisher = None
    match = re.search(r"(?i)(?:publisher|published by)\s*[:#]\s*(.+?)(?:\s{2,}|\.|$)", text)
    if match:
        publisher = match.group(1).strip()[:100]
        
    # Page Count
    pages = None
    match = re.search(r"(?i)(\d+)\s*(?:pages|pp\b|\.p\b)", text)
    if match:
        pages = match.group(1)
        
    # Dimensions
    dimensions = None
    match = re.search(r"(\d+(?:\.\d+)?\s*[x×]\s*\d+(?:\.\d+)?(?:\s*[x×]\s*\d+(?:\.\d+)?)?\s*(?:cm|mm|in|inches))", text, re.I)
    if match:
        dimensions = match.group(1).strip()
        
    # Category
    category = None
    match = re.search(r"(?i)(?:category|subject|genre)\s*[:#]\s*(.+?)(?:\s{2,}|\.|$)", text)
    if match:
        category = match.group(1).strip()[:100]

    return {
        "isbns": isbns,
        "isbn": isbns[0] if isbns else None,
        "publication_year": str(years[0]) if years else None,
        "edition": ", ".join(edition_flags) if edition_flags else None,
        "binding": binding,
        "language": language,
        "publisher": publisher,
        "pages": pages,
        "dimensions": dimensions,
        "category": category
    }

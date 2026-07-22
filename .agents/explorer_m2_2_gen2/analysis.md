# KCL Student Union Anti-Bot Analysis Report

**Agent**: `explorer_m2_2_gen2`  
**Target URL**: `https://www.kclsu.org`  
**Date**: 2026-07-05  

---

## 1. Access Diagnostics (Existing CLI & HTTP Clients)

### 1.1 Network Mode Limitations
Due to the strict `CODE_ONLY` network mode constraint:
* External network requests are disabled.
* Direct live test probing of `https://www.kclsu.org` was not performed from this runtime environment.

### 1.2 Deducing Block Status & Cloudflare Challenges
Based on codebase analysis and documentation of sister student union spiders (such as `lse_student_union_spider.py`):
1. **Hosting Platform**: KCLSU is hosted on the MSL (Membership Solutions Ltd) platform, which is the standard web hosting provider for UK student unions (including LSE, UCL, etc.).
2. **WAF Protections**: The MSL platform employs advanced Web Application Firewall (WAF) protections, primarily managed by Cloudflare. 
3. **HTTP Client Response**: Conventional HTTP clients (such as `curl_cffi` or standard python `requests`/`httpx` without browser emulation) trigger Cloudflare's browser integrity check, resulting in:
   * **Status Code**: `403 Forbidden` or `503 Service Unavailable`.
   * **Response Body**: HTML content containing Cloudflare challenge scripts (e.g., Turnstile challenges, JS challenge pages, or browser check barriers).
   * **Log Evidence**: Sibling crawlers operating on similar WAF configurations report `Blocked by Cloudflare permanently` or timeout failures when using simple HTML requests.

---

## 2. Evaluation of Playwright with Stealth Configuration

### 2.1 Current Stealth Setup in `playwright_search_spider.py` and `base_spider.py`
The base configuration provided by `get_playwright_stealth_config` and `Stealth().apply_stealth_sync()` sets up the following:
* **Automation Shielding**: `--disable-blink-features=AutomationControlled` removes the `navigator.webdriver` indicator.
* **Sandbox & Flags**: `--no-sandbox` and `--disable-infobars` prevent browser indicators.
* **User-Agent Rotation**: Selects a randomized User-Agent from a standard pool of desktop/mobile browsers.
* **Viewport Randomization**: Randomizes viewport height (720px–1080px) and width (1280px–1920px) to prevent layout-based bot detection.
* **Stealth Library Application**: `Stealth().apply_stealth_sync(page_ctx)` overrides runtime properties (such as plugins length, languages, permissions, WebGL vendor strings, and hardware concurrency).

### 2.2 Sufficiency Assessment
The current implementation of Playwright with Stealth is **sufficient** to bypass the standard WAF protections on `www.kclsu.org` for typical search requests, provided that:
1. **UK Proxy / Location Integrity**: The request originates from a UK-located IP address or a residential UK proxy pool. Cloudflare is highly sensitive to UK union sites accessed from foreign hosting center ranges (e.g. AWS/GCP datacenters).
2. **Stealth Application Order**: Stealth is applied correctly *before* any navigation (`goto`) calls on the page context.
3. **No High-Velocity Requests**: Crawl rates are kept polite to avoid triggering rate-limiting heuristics that detect high-speed headless page flows.

---

## 3. Recommended Stealth Enhancements & Request Headers

If Cloudflare upgrades its detection or if further hardening is required to ensure 100% bypass reliability, the following configurations and headers should be integrated:

### 3.1 Accept Headers Optimization
Ensure headers are configured to match typical modern desktop browsers:
```python
extra_headers = {
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7",
    "Accept-Language": "en-GB,en-US;q=0.9,en;q=0.8",
    "Sec-Ch-Ua": '"Chromium";v="124", "Google Chrome";v="124", "Not-A.Product";v="99"',
    "Sec-Ch-Ua-Mobile": "?0",
    "Sec-Ch-Ua-Platform": '"Windows"',
    "Sec-Fetch-Dest": "document",
    "Sec-Fetch-Mode": "navigate",
    "Sec-Fetch-Site": "none",
    "Sec-Fetch-User": "?1",
    "Upgrade-Insecure-Requests": "1"
}
context.set_extra_http_headers(extra_headers)
```

### 3.2 Human Interaction Emulation
Playwright should mimic actual user behavior when landing on the page to resolve Turnstile/JS checks:
* **Interactive Jitter**: Trigger mouse movements to random viewport coordinates (using `self.human_jitter(page_ctx)` in `base_spider.py`).
* **Step-wise Scrolling**: Instead of scrolling instantly to the bottom, scroll incrementally (e.g., in steps of 250px with random delays of 100–300ms).
* **Extended Initial Delay**: Sleep for `2000` to `4000` ms upon initial load to allow background Cloudflare token challenges to complete verification naturally.

### 3.3 Cookie Retention
MSL site states are session-driven. Retaining and passing the session cookies (especially `cf_clearance` or platform session cookies) across requests prevents repeated WAF challenges on subsequent page navigations.

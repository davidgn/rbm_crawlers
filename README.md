# RBM Crawlers 🕷️📚

A highly scalable, Playwright-based spider fleet designed to scrape, aggregate, and standardize listings from rare and used book marketplaces worldwide. 

This repository works in tandem with the **Buyback Operators** arbitrage engine.

## 🏗️ Architecture & Integration (The Firehose)

RBM Crawlers is designed using an Event-Driven CQRS architecture:
1. **Scraping**: The spiders dynamically navigate international book marketplaces, overcoming stealth protections via Playwright.
2. **The Firehose (Redis)**: Every time a spider successfully extracts a book listing, the data is immediately broadcasted as a JSON payload to the `oracle_firehose` Redis channel.
3. **Historical DB**: All listings are simultaneously appended to local JSONL files and a unified SQLite database (`unipress_site_definitions.db`) for historical analytics and harmonization.

The **Buyback Operators** arbitrage engine subscribes to this Redis firehose to execute high-speed, real-time arbitrage logic the second a lucrative deal is spotted.

## 🚀 Getting Started

### Prerequisites
- Python 3.11+
- [Docker & Docker Compose](https://docs.docker.com/compose/) (to run the shared Redis/Postgres infrastructure)

### Installation

1. **Start the Infrastructure** (from the parent `repos` directory):
   ```bash
   docker-compose up -d
   ```

2. **Install Dependencies**:
   ```bash
   pip install -r requirements.txt
   pip install -e .
   ```

## 🛠️ Usage

### Running the Spider Fleet
To execute the master spider fleet across all configured platforms and territories:
```bash
python src/run_full_extraction.py
```

To resume a previously interrupted extraction:
```bash
python src/run_resume_extraction.py
```

### Environment Variables
- `REDIS_URL`: Connection string for the Firehose. Defaults to `redis://localhost:6379/0`.
- `MASTER_DB_PATH`: Path to the unified SQLite database. Defaults to `unipress_site_definitions.db`.
- `UNIFIED_DB_PATH`: Path for the finalized bibliographic DB. Defaults to `unified_bibliographic.db`.

## 📂 Project Structure
- `/src`: Core spider logic (`base_spider.py`), data pipelines, and batch processors.
- `/scripts`: Utility scripts for auditing, syncing manifests, and generating index reports.
- `/tests`: Pytest suite for fallback logic, redaction, and ISBN utilities.
- `/data`: Output directory for the generated JSONL and CSV data drops.

## 📜 License
*Proprietary / Internal Use Only*

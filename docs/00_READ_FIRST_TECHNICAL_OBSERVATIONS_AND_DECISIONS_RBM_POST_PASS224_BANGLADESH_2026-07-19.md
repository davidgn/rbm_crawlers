# READ FIRST — Technical observations and decisions, RBM post-pass224 Bangladesh

## Classification decisions for Bangladesh (Pass 224)

### New entry
- **Book Loop BD (`bookloopbd.com`)**: Added as `main universe` candidate (`book_specific_exchange_marketplace`). Founded March 2026. Student-first structured peer-to-peer secondhand textbook marketplace covering classes 1–12 (Bangla Version, English Version, English Medium), SSC, HSC, O-Level, A-Level. Requires active-inventory reconfirmation within 6 months given recent founding date.

### Synced from pass220 registry into compile/summaries
- **BookCycle (`bookcycle.com.bd`)**: Reconfirmed `main universe` — buy/sell old books platform.
- **Booktionary (`booktionary.com.bd`)**: Reconfirmed `main universe` — virtual Nilkhet; new and used books, exchange mechanics.
- **Rokomari (`rokomari.com`)**: Confirmed `single-store bookstore layer` — largest online bookstore in Bangladesh (primarily new books).
- **Bangladesh Academy of Sciences**: `single-store bookstore layer` (institutional publications).
- **BRAC Research and Evaluation Division RED**: `single-store bookstore layer` (institutional publications).

### Active spiders (21 total, built in pass220)
`pbazaar_bd_spider.py`, `brac_research_evaluation_division_red_spider.py`, `bikroy_bd_spider.py`, `bangladesh_academy_sciences_spider.py`, `booktionary_bd_spider.py`, `olx_bd_spider.py`, `bookends_b_d_spider.py`, `adpost_bd_spider.py`, `locanto_bd_spider.py`, `eboighar_b_d_spider.py`, `rokomari_b_d_spider.py`, `book_ocean_b_d_spider.py`, `cellbazaar_spider.py`, `booktionary_spider.py`, `onlinebookshop_bd_spider.py`, `wafilife_bd_spider.py`, `harekrokom_b_d_spider.py`, `boi_bazar_b_d_spider.py`, `pathak_shamabesh_bd_spider.py`, `rokomari_bd_spider.py`, `clickbd_bd_spider.py`, `bookcycle_bd_spider.py`.

## Revisit queue status

Rows 9, 10, 11 all resolved as `resolved_pass220_active_spiders_built`. No new opens required.

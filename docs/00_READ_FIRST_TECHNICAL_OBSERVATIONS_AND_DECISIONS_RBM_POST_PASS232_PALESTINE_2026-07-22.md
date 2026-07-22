# READ FIRST — Technical observations and decisions, RBM post-pass232 Palestine

## Classification decisions

- **Watan Books / متجر وطن الكتب**: high-confidence `single-store bookstore layer`. The live catalogue exposes ILS prices, cart and checkout, and the official history describes imported publisher stock and book-fair activity. It is first-party retail, not a seller marketplace.
- **Yamameh Lilkitab / يمامة للكتاب**: high-confidence `single-store bookstore layer`. The Al-Bireh business publishes and sells its own print and electronic books. It is a publisher-store, not recommerce.
- **Dawerha / دورها — Books & Novels**: high-confidence `annex / classifieds`. The horizontal used-goods platform has seller-attributed books, ILS pricing, cart and checkout, but it is not book-specific.
- **Al-Haq**: corrected to `offline / fair / literacy layer`. Its current surface is a large downloadable institutional publications repository; no retail evidence supports bookstore classification.
- **PS Mall**: source/evidence ledger only. Seller onboarding, moderation, escrow and delivery are explicit, but no book category was verified.

## Strict-main gate

Closed. Palestine still lacks a verified book-specific recommerce platform combining independent seller onboarding, governed book listings and integrated payment. Dawerha and PS Mall prove horizontal commerce mechanics only.

## Active spiders

The seven Pass 220 Palestine spiders remain the expected fleet: Sharbain, Locanto, Watan Books, Al-Haq, OpenSooq, Shobiddak and Educational Bookshop.

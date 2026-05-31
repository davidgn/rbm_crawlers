# Tranche 8 MENA / Arab-world bridge probe — 2026-04-28

## Status

Tranche 8 is deliberately classified as a **bridge / source-control probe**, not a bookstore-registry harvest. The strongest observed surfaces in this block are publisher-association and publisher/distributor directories. Several country-level bookstore seams remain weak, private, noisy, empty, or out-of-universe.

## Durable conclusions

1. **Jordan is the strongest row-level association table in this tranche.** The Union of Jordanian Publishers member page exposes rows with house name, manager, location, phone/mobile/fax, postal box, website, email, and image. Treat rows as publisher/distributor staging; classify bookshop-like names conservatively.

2. **Arab Publishers Association is the best cross-country bridge index.** It exposes a filterable “Our Publishers” surface with country, house, manager, phone/mobile, email, website, and address. It should seed country-level publisher/distributor authority surfaces, not bookstore rows.

3. **Egyptian Publishers Association is useful but noisy.** The members page says “Showing 1 - 10 of 46 members,” but visible examples include test-like records and protected/spammy addresses. Treat it as association-grade but noise-sensitive.

4. **UAE EPA is an official publisher directory, not a bookstore registry.** EPA states over 100 members and exposes emirate/specialty filters. Retain as a UAE publishing-ecosystem authority seam.

5. **Saudi Arabia has an official publisher-sector anchor but no confirmed bookstore directory in this probe.** The private ArabLocal book-stores category is heavily contaminated; the first visible listing is Sunglass Hut. Use only for manual lead discovery.

6. **Qatar QNL directory is official but library-only.** It should not be mixed into the bookstore registry. It may be useful for broader book-infrastructure maps.

7. **Lebanon AtLebanon Books category is a negative probe.** The category exists but currently reports zero ads / nothing found.

## Governance

- No source in Tranche 8 is promoted to `raw_harvest_backed`.
- No full counts are asserted except explicit visible page statements:
  - Egypt: member page rendered “Showing 1 - 10 of 46 members.”
  - UAE EPA: page states “over 100 members.”
  - Lebanon AtLebanon: page reports 0 ads.
- Private-directory rows are kept separate and labelled noisy/fallback.
- Library directories remain out-of-universe for bookstore entity rows.

## Next best move

Tranche 9 should either:
- return to high-quality export/download targets: Mexico SIC, France data.gouv, Chile Frankfurt 2027 sheet; or
- continue weak-region coverage with Asia/Africa bridge probes, while acknowledging that many will be lead-grade rather than registry-grade.

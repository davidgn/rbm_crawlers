# Bookstore registry executable harvest retry — stopline v2

Generated: 2026-04-26

## What was attempted

A second execution attempt was made inside the current ChatGPT runtime using the self-contained queue runner from `bookstore_registry_execution_harvest_2026-04-26_v1`. The retry entered the Mexico SIC job and hung during local network/DNS resolution/download before producing raw exports or normalized files. The stuck processes were killed so the run would not be mistaken for a completed harvest.

## What was recovered through web observation

The web tool could open the Mexico SIC JSON endpoint and confirm that the endpoint is live and structured as expected. It also confirmed that Australia Love Your Bookshop and New Zealand Booksellers Aotearoa expose the expected public directory/finder surfaces. The web tool is useful evidence, but it is not a substitute for a local raw export with file hashes.

## Promotion decision

No source is promoted to `raw-harvest-backed` in this retry. Mexico remains `probe-backed / web-observed-live / raw-download-blocked-current-runtime`. Australia, New Zealand, and Japan remain `probe-backed` with executable scripts queued.

## Immediate governed next move

Run the queue in a network-enabled shell. Promote Mexico SIC only after raw JSON/CSV/XML files, normalized CSV, row count, and hash manifest exist. Do not promote the web sample rows as the real harvest.

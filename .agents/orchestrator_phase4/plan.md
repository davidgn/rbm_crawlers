# Execution Plan — University Spiders Salvage (Phase 4)

## Objective
Salvage and upgrade UPenn, KCL, LSE, Columbia, and UChicago spiders to bypass 403 blocks (using Playwright or headless browsers) and extract at least 1 BookListing.

## Milestones & Tasks

### M1. UPenn Bookstore Used Spider (upenn_bookstore_used_spider.py)
1. **Analyze**: Explore UPenn bookstore (`https://upenn.bncollege.com`) anti-bot blocks and select appropriate selectors for `PlaywrightSearchSpider`.
2. **Implement**: Convert `UpennBookstoreUsedSpider` to inherit from `PlaywrightSearchSpider` and define selectors.
3. **Verify**: Ensure it bypasses blocks and extracts at least 1 BookListing. Verify via Reviewer, Challenger, and Forensic Auditor.

### M2. KCL Student Union Spider (kcl_student_union_spider.py)
1. **Analyze**: Explore KCL Student Union website (`https://www.kclsu.org`) anti-bot blocks and selectors.
2. **Implement**: Convert `KclStudentUnionSpider` to inherit from `PlaywrightSearchSpider` and define selectors.
3. **Verify**: Ensure it bypasses blocks and extracts at least 1 BookListing. Verify via Reviewer, Challenger, and Forensic Auditor.

### M3. LSE Student Union Spider (lse_student_union_spider.py)
1. **Analyze**: Explore LSE Student Union website (`https://www.lsesu.com`) anti-bot blocks and selectors.
2. **Implement**: Convert `LseStudentUnionSpider` to inherit from `PlaywrightSearchSpider` and define selectors.
3. **Verify**: Ensure it bypasses blocks and extracts at least 1 BookListing. Verify via Reviewer, Challenger, and Forensic Auditor.

### M4. Columbia Bookstore Spider (columbia_university_bookstore_spider.py)
1. **Analyze**: Explore Columbia bookstore (`https://columbia.bncollege.com`) anti-bot blocks and selectors. (Can likely share UPenn's selectors).
2. **Implement**: Convert to inherit from `PlaywrightSearchSpider` and define selectors.
3. **Verify**: Verify via Reviewer, Challenger, and Forensic Auditor.

### M5. UChicago Bookstore Spider (uchicago_bookstore_used_spider.py)
1. **Analyze**: Explore UChicago bookstore (`https://uchicago.bncollege.com`) anti-bot blocks and selectors. (Can likely share UPenn/Columbia selectors).
2. **Implement**: Convert to inherit from `PlaywrightSearchSpider` and define selectors.
3. **Verify**: Verify via Reviewer, Challenger, and Forensic Auditor.

### M6. Final E2E Verification & Integration
1. Run all 5 upgraded spiders with the query "Harry Potter" or appropriate test query and check if they succeed and return >= 1 BookListing.
2. Run Forensic Auditor across all 5 spiders.
3. Complete and submit report.

import pandas as pd


REGISTRY = "data/rbm_canonical_site_registry_2026-05-06_pass217_russia_final_saturation_cleanup.csv"
COMPILE = "data/rbm_all_categories_verbose_compile_2026-05-06_pass217_russia_final_saturation_cleanup.csv"
SUMMARIES = "data/rbm_territory_summaries_2026-05-06_pass217_russia_final_saturation_cleanup.csv"
REVISIT = "data/rbm_revisit_queue_post_pass220.csv"
SOURCES = "data/rbm_sources_consulted_2026-05-06_pass217_russia_final_saturation_cleanup.csv"
EVIDENCE = "data/rbm_runtime_gap_bridge_evidence_2026-05-06_pass217_russia_final_saturation_cleanup.csv"


def append_unique(frame, rows, keys):
    for row in rows:
        mask = pd.Series(True, index=frame.index)
        for key in keys:
            mask &= frame[key].fillna("").astype(str).eq(str(row[key]))
        if not mask.any():
            frame = pd.concat([frame, pd.DataFrame([row])], ignore_index=True)
    return frame


registry = pd.read_csv(REGISTRY)
compile_rows = pd.read_csv(COMPILE)
summaries = pd.read_csv(SUMMARIES)
revisit = pd.read_csv(REVISIT)
sources = pd.read_csv(SOURCES)
evidence = pd.read_csv(EVIDENCE)

parent_counts = (
    len(summaries), len(compile_rows), len(registry), len(revisit), len(sources), len(evidence)
)

# Al-Haq is a current institutional download repository, not a retail bookstore.
alhaq = (registry["territory"] == "Palestine") & (registry["site"] == "AlHaq")
registry.loc[alhaq, "entry_type"] = "institutional_publications_repository"
registry.loc[alhaq, "canonical_url"] = "https://www.alhaq.org/publications"
registry.loc[alhaq, "primary_category"] = "offline / fair / literacy layer"
registry.loc[alhaq, "secondary_categories"] = ""
registry.loc[alhaq, "category_count"] = 1
registry.loc[alhaq, "confidence"] = "high"
registry.loc[alhaq, "source_layers"] = "pass232_palestine_2026-07-22"
registry.loc[alhaq, "notes"] = (
    "Ramallah human-rights institution with a large current public publications and report repository; "
    "institutional literacy/research evidence, not a bookstore or marketplace."
)
registry.loc[alhaq, "url_status"] = "web_verified_2026_07_22"

new_registry = [
    {
        "territory": "Palestine",
        "region_block": "Levant / Mashriq",
        "site": "Watan Books / متجر وطن الكتب",
        "entry_type": "online_first_party_bookstore",
        "canonical_url": "https://watanbooks.com/",
        "primary_category": "single-store bookstore layer",
        "secondary_categories": "online bookstore; imported Arabic books; book fairs; ILS cart checkout",
        "category_count": 1,
        "confidence": "high",
        "source_layers": "pass232_palestine_2026-07-22",
        "notes": "Active first-party bookshop with ILS pricing, cart checkout, broad Arabic catalogue, and a stated history of book fairs since 2019; no third-party seller onboarding.",
        "url_status": "web_verified_2026_07_22",
    },
    {
        "territory": "Palestine",
        "region_block": "Levant / Mashriq",
        "site": "Yamameh Lilkitab / يمامة للكتاب — Al-Bireh",
        "entry_type": "bookstore_publisher_layer",
        "canonical_url": "https://www.yamameh.com/",
        "primary_category": "single-store bookstore layer",
        "secondary_categories": "independent publisher; online bookstore; print and electronic books; Al-Bireh Ramallah",
        "category_count": 1,
        "confidence": "high",
        "source_layers": "pass232_palestine_2026-07-22",
        "notes": "Independent Al-Bireh publisher and online store launched in 2022, selling its Arabic and English print/electronic books; first-party publisher-store, not recommerce.",
        "url_status": "web_verified_2026_07_22",
    },
    {
        "territory": "Palestine",
        "region_block": "Levant / Mashriq",
        "site": "Dawerha / دورها — Books & Novels",
        "entry_type": "horizontal_used_goods_marketplace_books_category",
        "canonical_url": "https://dawerha.co/category/10/%D9%83%D9%8F%D8%AA%D8%A8-%D9%88-%D8%B1%D9%88%D8%A7%D9%8A%D8%A7%D8%AA",
        "primary_category": "annex / classifieds",
        "secondary_categories": "Palestinian used-goods marketplace; books and novels; named sellers; cart and checkout",
        "category_count": 1,
        "confidence": "high",
        "source_layers": "pass232_palestine_2026-07-22",
        "notes": "Ramallah horizontal used-goods marketplace with a Books & Novels category, seller-attributed book listings, ILS prices, cart and checkout. Strong used-book signal but not book-specific strict-main infrastructure.",
        "url_status": "web_verified_2026_07_22",
    },
]
registry = append_unique(registry, new_registry, ["territory", "site"])

new_sources = [
    {"territory": "Palestine", "entity": "Watan Books storefront", "source_url": "https://watanbooks.com/", "source_kind": "supporting_classification_evidence", "role": "Live first-party catalogue with ILS prices, cart, wishlist and checkout."},
    {"territory": "Palestine", "entity": "Watan Books about page", "source_url": "https://watanbooks.com/%D9%85%D9%86-%D9%86%D8%AD%D9%86/", "source_kind": "supporting_identity_evidence", "role": "Store history, imported publisher stock and book-fair activity; no seller-marketplace claim."},
    {"territory": "Palestine", "entity": "Yamameh Lilkitab about page", "source_url": "https://www.yamameh.com/about-us", "source_kind": "supporting_classification_evidence", "role": "Al-Bireh independent publisher and online book store launched in 2022."},
    {"territory": "Palestine", "entity": "Dawerha Books & Novels category", "source_url": "https://dawerha.co/category/10/%D9%83%D9%8F%D8%AA%D8%A8-%D9%88-%D8%B1%D9%88%D8%A7%D9%8A%D8%A7%D8%AA", "source_kind": "horizontal_resale_category", "role": "Books and novels within a Palestinian horizontal used-goods marketplace."},
    {"territory": "Palestine", "entity": "Dawerha used-book listing", "source_url": "https://www.dawerha.co/product_detail/656/%D8%A7%D9%84%D8%AC%D8%AD%D9%8A%D9%85-%D8%B1%D9%88%D8%A7%D9%8A%D8%A9-%D9%84%D8%AF%D8%A7%D9%86-%D8%A8%D8%B1%D8%A7%D9%88%D9%86", "source_kind": "supporting_listing_evidence", "role": "Named seller, Ramallah location, ILS price, cart and checkout on an individual used-book listing."},
    {"territory": "Palestine", "entity": "PS Mall used-market boundary audit", "source_url": "https://psmall.ps/", "source_kind": "supporting_boundary_evidence", "role": "Palestinian general used-goods seller onboarding, escrow wallet and delivery; no verified book-specific category, so not canonicalized."},
    {"territory": "Palestine", "entity": "Al-Haq publications", "source_url": "https://www.alhaq.org/publications", "source_kind": "institutional_publications_repository", "role": "Current downloadable human-rights reports and publications; not a retail bookstore."},
]
sources = append_unique(sources, new_sources, ["territory", "entity", "source_url"])

new_evidence = [
    {"bridge_stamp": "2026-07-22_pass232_palestine", "territory": "Palestine", "entry": "Watan Books / متجر وطن الكتب", "category": "single-store bookstore layer", "confidence": "high", "canonical_url": "https://watanbooks.com/", "source_url": "https://watanbooks.com/%D9%85%D9%86-%D9%86%D8%AD%D9%86/", "evidence_ref": "P232_WatanBooks", "note": "Live Palestinian first-party bookshop and book-fair operator.", "evidence_status": "web_verified_2026_07_22", "strict_main_universe_fit": "no", "evidence_type": "online_first_party_bookstore", "evidence_note": "Retail inventory belongs to one store; no third-party seller rail.", "evidence_kind": "supporting_classification_evidence"},
    {"bridge_stamp": "2026-07-22_pass232_palestine", "territory": "Palestine", "entry": "Yamameh Lilkitab / يمامة للكتاب — Al-Bireh", "category": "single-store bookstore layer", "confidence": "high", "canonical_url": "https://www.yamameh.com/", "source_url": "https://www.yamameh.com/about-us", "evidence_ref": "P232_Yamameh", "note": "Independent Al-Bireh publisher and online store.", "evidence_status": "web_verified_2026_07_22", "strict_main_universe_fit": "no", "evidence_type": "bookstore_publisher_layer", "evidence_note": "First-party print and electronic publications.", "evidence_kind": "supporting_classification_evidence"},
    {"bridge_stamp": "2026-07-22_pass232_palestine", "territory": "Palestine", "entry": "Dawerha / دورها — Books & Novels", "category": "annex / classifieds", "confidence": "high", "canonical_url": "https://dawerha.co/category/10/%D9%83%D9%8F%D8%AA%D8%A8-%D9%88-%D8%B1%D9%88%D8%A7%D9%8A%D8%A7%D8%AA", "source_url": "https://www.dawerha.co/product_detail/656/%D8%A7%D9%84%D8%AC%D8%AD%D9%8A%D9%85-%D8%B1%D9%88%D8%A7%D9%8A%D8%A9-%D9%84%D8%AF%D8%A7%D9%86-%D8%A8%D8%B1%D8%A7%D9%88%D9%86", "evidence_ref": "P232_Dawerha", "note": "Palestinian used-goods marketplace with active seller-attributed book listings.", "evidence_status": "web_verified_2026_07_22", "strict_main_universe_fit": "no", "evidence_type": "horizontal_used_goods_marketplace_books_category", "evidence_note": "Integrated listing/cart evidence is horizontal, not book-specific.", "evidence_kind": "supporting_boundary_evidence"},
    {"bridge_stamp": "2026-07-22_pass232_palestine", "territory": "Palestine", "entry": "PS Mall used-market boundary audit", "category": "annex / classifieds", "confidence": "medium-high", "canonical_url": "https://psmall.ps/", "source_url": "https://psmall.ps/", "evidence_ref": "P232_PSMallBoundary", "note": "General used-goods onboarding, escrow and delivery are explicit, but no book category was verified.", "evidence_status": "web_verified_2026_07_22", "strict_main_universe_fit": "no", "evidence_type": "horizontal_used_goods_marketplace_boundary", "evidence_note": "Retained as source evidence only pending a verified book surface.", "evidence_kind": "supporting_boundary_evidence"},
    {"bridge_stamp": "2026-07-22_pass232_palestine", "territory": "Palestine", "entry": "AlHaq", "category": "offline / fair / literacy layer", "confidence": "high", "canonical_url": "https://www.alhaq.org/publications", "source_url": "https://www.alhaq.org/publications", "evidence_ref": "P232_AlHaqReclassification", "note": "Institutional public-report repository reclassified from bookstore layer.", "evidence_status": "web_verified_2026_07_22", "strict_main_universe_fit": "no", "evidence_type": "institutional_publications_repository", "evidence_note": "Downloadable reports and research, without retail-commerce evidence.", "evidence_kind": "supporting_classification_evidence"},
]
evidence = append_unique(evidence, new_evidence, ["territory", "entry", "evidence_ref"])

# Rebuild Palestine compile rows from the canonical registry, retaining secondary category facets.
compile_rows = compile_rows[compile_rows["territory"] != "Palestine"].copy()
generated = []
for _, row in registry[registry["territory"] == "Palestine"].iterrows():
    key_name = str(row["site"]).split("—")[0].strip().lower().replace(".", "_").replace("/", "_").replace(" ", "_")
    categories = [(str(row["primary_category"]), "primary")]
    secondary = str(row["secondary_categories"]) if pd.notna(row["secondary_categories"]) else ""
    for category in [part.strip() for part in secondary.split(";")]:
        if category in {"used-book signal (territory note)"}:
            categories.append((category, "supporting"))
    for category, role in categories:
        generated.append({
            "territory": "Palestine", "region_block": row["region_block"], "category": category,
            "entry": row["site"], "entry_type": row["entry_type"], "source_layer": row["source_layers"],
            "confidence": row["confidence"], "note": row["notes"], "category_role": role,
            "canonical_entry_key": f"palestine::{key_name}",
        })
compile_rows = pd.concat([compile_rows, pd.DataFrame(generated)], ignore_index=True)

pal = compile_rows[compile_rows["territory"] == "Palestine"]
counts = pal["category"].value_counts()
summary_index = summaries[summaries["territory"] == "Palestine"].index[0]
summaries.loc[summary_index, "dominant_category"] = "annex / classifieds"
summaries.loc[summary_index, "categories_present"] = "; ".join(sorted(pal["category"].unique()))
summaries.loc[summary_index, "site_count"] = len(registry[registry["territory"] == "Palestine"])
summaries.loc[summary_index, "row_count"] = len(pal)
for column, category in {
    "main_universe": "main universe", "weak_fit_core": "weak-fit core",
    "single_store_used_booksellers": "single-store used booksellers",
    "single_store_bookstore_layer": "single-store bookstore layer",
    "single_store_used_bookstore_signal": "used-book signal (territory note)",
    "annex_classifieds": "annex / classifieds",
    "offline_fair_literacy_layer": "offline / fair / literacy layer",
}.items():
    summaries.loc[summary_index, column] = int(counts.get(category, 0))
confidence = pal["confidence"].value_counts()
summaries.loc[summary_index, "confidence_mix"] = "; ".join(f"{key}:{confidence[key]}" for key in sorted(confidence.index))
summaries.loc[summary_index, "used_book_signal_note"] = (
    "Pass232 verified Dawerha's seller-attributed used-book category with cart/checkout and reconfirmed active OpenSooq listings, while keeping both horizontal and outside strict-main."
)
summaries.loc[summary_index, "territory_profile"] = (
    "Palestine has a strong Jerusalem/Ramallah/Hebron bookstore and publisher spine, active social and horizontal used-book circulation, and institutional publication layers. Pass232 added Watan Books, Yamameh and Dawerha, and corrected Al-Haq's classification."
)
summaries.loc[summary_index, "notes_compact"] = (
    "Strict-main remains closed: no Palestine-native book-specific recommerce platform with independent seller onboarding, listings and payment was verified. PS Mall is retained as horizontal boundary evidence only."
)

revisit_index = revisit[revisit["territory"] == "Palestine"].index[0]
revisit.loc[revisit_index, "status"] = "resolved_pass232_current_boundary_audit"
revisit.loc[revisit_index, "suggested_scope"] = (
    "Only reopen for a Palestine-native book-specific recommerce platform, or proof that PS Mall/Dawerha has evolved from horizontal commerce into a governed book-specialist rail."
)
revisit.loc[revisit_index, "reason"] = (
    "Pass232 added Watan Books and Yamameh as first-party book nodes, Dawerha as a horizontal used-book category, corrected Al-Haq to institutional publications, and recorded PS Mall's onboarding/escrow/delivery mechanics as non-book-specific boundary evidence."
)

registry.to_csv(REGISTRY, index=False)
compile_rows.to_csv(COMPILE, index=False)
summaries.to_csv(SUMMARIES, index=False)
revisit.to_csv(REVISIT, index=False)
sources.to_csv(SOURCES, index=False)
evidence.to_csv(EVIDENCE, index=False)

final_counts = (
    len(summaries), len(compile_rows), len(registry), len(revisit), len(sources), len(evidence)
)
print("Parent counts:", parent_counts)
print("Final counts:", final_counts)
print("Delta:", tuple(final - parent for parent, final in zip(parent_counts, final_counts)))
print("Palestine categories:", counts.to_dict())

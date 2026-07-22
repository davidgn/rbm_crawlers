import pandas as pd

registry_path = 'data/rbm_canonical_site_registry_2026-05-06_pass217_russia_final_saturation_cleanup.csv'
compile_path = 'data/rbm_all_categories_verbose_compile_2026-05-06_pass217_russia_final_saturation_cleanup.csv'
summaries_path = 'data/rbm_territory_summaries_2026-05-06_pass217_russia_final_saturation_cleanup.csv'
revisit_path = 'data/rbm_revisit_queue_post_pass220.csv'
sources_path = 'data/rbm_sources_consulted_2026-05-06_pass217_russia_final_saturation_cleanup.csv'
evidence_path = 'data/rbm_runtime_gap_bridge_evidence_2026-05-06_pass217_russia_final_saturation_cleanup.csv'

print("Loading CSV files...")
df_reg = pd.read_csv(registry_path)
df_comp = pd.read_csv(compile_path)
df_summ = pd.read_csv(summaries_path)
df_rev = pd.read_csv(revisit_path)
df_src = pd.read_csv(sources_path)
df_ev = pd.read_csv(evidence_path)

print(f"Initial row counts:")
print(f"Registry: {len(df_reg)}")
print(f"Compile: {len(df_comp)}")
print(f"Summaries: {len(df_summ)}")
print(f"Revisit Queue: {len(df_rev)}")
print(f"Sources: {len(df_src)}")
print(f"Evidence: {len(df_ev)}")

# New entries for Cameroon
new_reg_entries = [
    {
        'territory': 'Cameroon',
        'region_block': 'Central Africa / West-Central Africa',
        'site': 'Librairie Papeterie Bilingue Audrey — Douala',
        'entry_type': 'single_store_used_booksellers',
        'canonical_url': 'https://mont-pandi.com/librairie-audrey-douala',
        'primary_category': 'single-store used booksellers',
        'secondary_categories': 'used books; new books; bilingual bookstore; school supplies',
        'category_count': 1,
        'confidence': 'medium-high',
        'source_layers': 'pass222_cameroon_2026-07-19',
        'notes': 'Bilingual bookstore in Akwa, Douala (Digital Trade Center building) offering new and used books (livres neufs et d’occasion), textbooks, and educational supplies.',
        'url_status': 'web_verified_2026_07_19'
    },
    {
        'territory': 'Cameroon',
        'region_block': 'Central Africa / West-Central Africa',
        'site': 'Librairie Saint Paul — Yaoundé',
        'entry_type': 'bookstore',
        'canonical_url': 'https://www.facebook.com/LibrairieSaintPaulYaounde/',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'educational manuals; general literature; religious bookstore; stationery',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass222_cameroon_2026-07-19',
        'notes': 'Major historic bookstore in downtown Yaoundé (near Notre-Dame Cathedral) supplying educational manuals, general literature, and publisher titles across Cameroon.',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
for entry in new_reg_entries:
    if df_reg[df_reg['site'] == entry['site']].empty:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)

# Delete existing Cameroon entries in Compile to perform a complete sync from Registry
print("Syncing Compile CSV for Cameroon...")
df_comp = df_comp[df_comp['territory'] != 'Cameroon']

df_cam_reg = df_reg[df_reg['territory'] == 'Cameroon']
comp_category_map = {
    'main universe': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'single-store used booksellers': 'single-store used booksellers',
    'weak-fit core': 'weak-fit core',
    'single-store bookstore layer': 'single-store bookstore layer'
}

for _, row in df_cam_reg.iterrows():
    site_clean = row['site'].split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"cameroon::{site_clean}"
    
    comp_row = {
        'territory': 'Cameroon',
        'region_block': 'Central Africa / West-Central Africa',
        'category': comp_category_map.get(row['primary_category'], 'weak-fit core'),
        'entry': row['site'],
        'entry_type': row['entry_type'],
        'source_layer': row['source_layers'],
        'confidence': row['confidence'],
        'note': row['notes'],
        'category_role': 'primary',
        'canonical_entry_key': entry_key
    }
    df_comp = pd.concat([df_comp, pd.DataFrame([comp_row])], ignore_index=True)

# Append new sources consulted
print("Appending new entries to Sources Consulted...")
new_sources = [
    {
        'territory': 'Cameroon',
        'entity': 'Librairie Papeterie Bilingue Audrey — Douala',
        'source_url': 'https://mont-pandi.com/librairie-audrey-douala',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Bilingual bookstore in Akwa, Douala offering new and used books and educational supplies.'
    },
    {
        'territory': 'Cameroon',
        'entity': 'Librairie Saint Paul — Yaoundé',
        'source_url': 'https://www.facebook.com/LibrairieSaintPaulYaounde/',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Major historic bookstore in downtown Yaoundé supplying educational manuals and literature.'
    }
]

for src in new_sources:
    if df_src[(df_src['territory'] == 'Cameroon') & (df_src['entity'] == src['entity'])].empty:
        df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence rows
print("Appending new entries to Evidence Ledger...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass222_cameroon',
        'territory': 'Cameroon',
        'entry': 'Librairie Papeterie Bilingue Audrey — Douala',
        'category': 'single-store used booksellers',
        'confidence': 'medium-high',
        'canonical_url': 'https://mont-pandi.com/librairie-audrey-douala',
        'source_url': 'https://mont-pandi.com/librairie-audrey-douala',
        'evidence_ref': 'P222_LibrairieAudrey',
        'note': 'Bilingual bookstore in Douala offering new and used books.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'single_store_used_booksellers',
        'evidence_note': 'Bilingual bookstore with used books section.',
        'evidence_kind': 'supporting_classification_evidence'
    },
    {
        'bridge_stamp': '2026-07-19_pass222_cameroon',
        'territory': 'Cameroon',
        'entry': 'Librairie Saint Paul — Yaoundé',
        'category': 'single-store bookstore layer',
        'confidence': 'high',
        'canonical_url': 'https://www.facebook.com/LibrairieSaintPaulYaounde/',
        'source_url': 'https://www.facebook.com/LibrairieSaintPaulYaounde/',
        'evidence_ref': 'P222_LibrairieSaintPaul',
        'note': 'Major bookstore in downtown Yaoundé supplying educational and general literature.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore',
        'evidence_note': 'Historic Yaoundé bookstore.',
        'evidence_kind': 'supporting_classification_evidence'
    }
]

for ev in new_evidence:
    if df_ev[(df_ev['territory'] == 'Cameroon') & (df_ev['entry'] == ev['entry'])].empty:
        df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Territory Summaries for Cameroon
print("Updating Territory Summaries for Cameroon...")
df_cam_comp = df_comp[df_comp['territory'] == 'Cameroon']
site_count = len(df_cam_comp)
row_count = len(df_cam_comp)

comp_counts = df_cam_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main universe', 0))
weak_fit_count = int(comp_counts.get('weak-fit core', 0))
single_store_used_count = int(comp_counts.get('single-store used booksellers', 0))
single_store_bookstore_count = int(comp_counts.get('single-store bookstore layer', 0))
annex_classifieds_count = int(comp_counts.get('annex / classifieds', 0))
offline_fair_count = int(comp_counts.get('offline / fair / literacy layer', 0))

print(f"Cameroon Category counts:")
print(f"Total Sites/Rows: {site_count}")
print(f"Main Universe: {main_univ_count}")
print(f"Weak-Fit Core: {weak_fit_count}")
print(f"Single Store Used Booksellers: {single_store_used_count}")
print(f"Single Store Bookstore Layer: {single_store_bookstore_count}")
print(f"Annex Classifieds: {annex_classifieds_count}")
print(f"Offline Fair / Literacy Layer: {offline_fair_count}")

idx = df_summ[df_summ['territory'] == 'Cameroon'].index[0]
df_summ.loc[idx, 'site_count'] = site_count
df_summ.loc[idx, 'row_count'] = row_count
df_summ.loc[idx, 'main_universe'] = main_univ_count
df_summ.loc[idx, 'weak_fit_core'] = weak_fit_count
df_summ.loc[idx, 'single_store_used_booksellers'] = single_store_used_count
df_summ.loc[idx, 'single_store_bookstore_layer'] = single_store_bookstore_count
df_summ.loc[idx, 'annex_classifieds'] = annex_classifieds_count
df_summ.loc[idx, 'offline_fair_literacy_layer'] = offline_fair_count
df_summ.loc[idx, 'used_book_signal_note'] = (
    'Pass 222 synced pass 219 classified nodes (CoinAfrique, Afribaba, SecondMain237, Camerbiz) and added Librairie Audrey (Douala, new and used books) and Librairie Saint Paul (Yaoundé). '
    'CamerBookshop remains the primary book-specific platform candidate.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Cameroon has a well-structured book commerce environment across Douala and Yaoundé: CamerBookshop Online as a dedicated book platform candidate, '
    'major physical bookstores (Librairie Saint Paul, Librairie Audrey, LIPANOU, Fnac Douala, Éditions CLE), and general classifieds/resale portals (CoinAfrique, SecondMain237, Afribaba, Camerbiz).'
)

print("Saving updated CSV files...")
df_reg.to_csv(registry_path, index=False)
df_comp.to_csv(compile_path, index=False)
df_summ.to_csv(summaries_path, index=False)
df_rev.to_csv(revisit_path, index=False)
df_src.to_csv(sources_path, index=False)
df_ev.to_csv(evidence_path, index=False)

print(f"Final row counts:")
print(f"Registry: {len(df_reg)}")
print(f"Compile: {len(df_comp)}")
print(f"Summaries: {len(df_summ)}")
print(f"Revisit Queue: {len(df_rev)}")
print(f"Sources: {len(df_src)}")
print(f"Evidence: {len(df_ev)}")
print("All Cameroon files synchronized successfully!")

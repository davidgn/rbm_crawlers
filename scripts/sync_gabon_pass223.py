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

# New entries for Gabon
new_reg_entries = [
    {
        'territory': 'Gabon',
        'region_block': 'Central Africa / West-Central Africa',
        'site': 'La Maison Gabonaise du Livre — Libreville',
        'entry_type': 'publisher_bookstore_layer',
        'canonical_url': 'https://www.facebook.com/LaMaisonGabonaiseDuLivre/',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'Gabonese literature; publishing house; local bookstore; essays',
        'category_count': 1,
        'confidence': 'medium-high',
        'source_layers': 'pass223_gabon_2026-07-19',
        'notes': 'Local publisher and book distributor in Libreville promoting Gabonese literature, essays, and children’s books.',
        'url_status': 'web_verified_2026_07_19'
    },
    {
        'territory': 'Gabon',
        'region_block': 'Central Africa / West-Central Africa',
        'site': 'Librairie Livre + — Libreville',
        'entry_type': 'bookstore',
        'canonical_url': 'https://www.goafricaonline.com/ga/40113-livre-librairies-libreville-gabon',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'general bookstore; stationery; educational supplies; card services',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass223_gabon_2026-07-19',
        'notes': 'Major bookstore and stationery store located in downtown Libreville offering books, educational supplies, and card services.',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
for entry in new_reg_entries:
    if df_reg[df_reg['site'] == entry['site']].empty:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)

# Sync Compile CSV for Gabon
print("Syncing Compile CSV for Gabon...")
df_comp = df_comp[df_comp['territory'] != 'Gabon']

df_gab_reg = df_reg[df_reg['territory'] == 'Gabon']
comp_category_map = {
    'main universe': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'single-store used booksellers': 'single-store used booksellers',
    'weak-fit core': 'weak-fit core',
    'single-store bookstore layer': 'single-store bookstore layer'
}

for _, row in df_gab_reg.iterrows():
    site_clean = row['site'].split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"gabon::{site_clean}"
    
    comp_row = {
        'territory': 'Gabon',
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
        'territory': 'Gabon',
        'entity': 'La Maison Gabonaise du Livre — Libreville',
        'source_url': 'https://www.facebook.com/LaMaisonGabonaiseDuLivre/',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Local publisher and book distributor in Libreville promoting Gabonese literature and essays.'
    },
    {
        'territory': 'Gabon',
        'entity': 'Librairie Livre + — Libreville',
        'source_url': 'https://www.goafricaonline.com/ga/40113-livre-librairies-libreville-gabon',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Major bookstore and stationery store located in downtown Libreville.'
    }
]

for src in new_sources:
    if df_src[(df_src['territory'] == 'Gabon') & (df_src['entity'] == src['entity'])].empty:
        df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence rows
print("Appending new entries to Evidence Ledger...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass223_gabon',
        'territory': 'Gabon',
        'entry': 'La Maison Gabonaise du Livre — Libreville',
        'category': 'single-store bookstore layer',
        'confidence': 'medium-high',
        'canonical_url': 'https://www.facebook.com/LaMaisonGabonaiseDuLivre/',
        'source_url': 'https://www.facebook.com/LaMaisonGabonaiseDuLivre/',
        'evidence_ref': 'P223_MaisonGabonaiseLivre',
        'note': 'Local publisher and bookstore in Libreville.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'publisher_bookstore_layer',
        'evidence_note': 'Local Gabonese publisher and distributor.',
        'evidence_kind': 'supporting_classification_evidence'
    },
    {
        'bridge_stamp': '2026-07-19_pass223_gabon',
        'territory': 'Gabon',
        'entry': 'Librairie Livre + — Libreville',
        'category': 'single-store bookstore layer',
        'confidence': 'high',
        'canonical_url': 'https://www.goafricaonline.com/ga/40113-livre-librairies-libreville-gabon',
        'source_url': 'https://www.goafricaonline.com/ga/40113-livre-librairies-libreville-gabon',
        'evidence_ref': 'P223_LibrairieLivrePlus',
        'note': 'Major bookstore in downtown Libreville.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore',
        'evidence_note': 'Downtown Libreville bookstore.',
        'evidence_kind': 'supporting_classification_evidence'
    }
]

for ev in new_evidence:
    if df_ev[(df_ev['territory'] == 'Gabon') & (df_ev['entry'] == ev['entry'])].empty:
        df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Territory Summaries for Gabon
print("Updating Territory Summaries for Gabon...")
df_gab_comp = df_comp[df_comp['territory'] == 'Gabon']
site_count = len(df_gab_comp)
row_count = len(df_gab_comp)

comp_counts = df_gab_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main universe', 0))
weak_fit_count = int(comp_counts.get('weak-fit core', 0))
single_store_used_count = int(comp_counts.get('single-store used booksellers', 0))
single_store_bookstore_count = int(comp_counts.get('single-store bookstore layer', 0))
annex_classifieds_count = int(comp_counts.get('annex / classifieds', 0))
offline_fair_count = int(comp_counts.get('offline / fair / literacy layer', 0))

print(f"Gabon Category counts:")
print(f"Total Sites/Rows: {site_count}")
print(f"Main Universe: {main_univ_count}")
print(f"Weak-Fit Core: {weak_fit_count}")
print(f"Single Store Used Booksellers: {single_store_used_count}")
print(f"Single Store Bookstore Layer: {single_store_bookstore_count}")
print(f"Annex Classifieds: {annex_classifieds_count}")
print(f"Offline Fair / Literacy Layer: {offline_fair_count}")

idx = df_summ[df_summ['territory'] == 'Gabon'].index[0]
df_summ.loc[idx, 'site_count'] = site_count
df_summ.loc[idx, 'row_count'] = row_count
df_summ.loc[idx, 'main_universe'] = main_univ_count
df_summ.loc[idx, 'weak_fit_core'] = weak_fit_count
df_summ.loc[idx, 'single_store_used_booksellers'] = single_store_used_count
df_summ.loc[idx, 'single_store_bookstore_layer'] = single_store_bookstore_count
df_summ.loc[idx, 'annex_classifieds'] = annex_classifieds_count
df_summ.loc[idx, 'offline_fair_literacy_layer'] = offline_fair_count
df_summ.loc[idx, 'used_book_signal_note'] = (
    'Pass 223 synced pass 220 classified nodes (M-GABON, Marché241) and added La Maison Gabonaise du Livre and Librairie Livre + (Libreville). '
    'Gabon Livre remains the primary book-specific candidate.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Gabon has a mix of digital book platforms (Gabon Livre, Gabon Livres), traditional bookstores and publishers (Maison de la Presse, La Maison Gabonaise du Livre, Librairie Livre +, Mapane), '
    'and horizontal classifieds/resale channels (CoinAfrique Gabon, M-GABON, Marché241, TROC group).'
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
print("All Gabon files synchronized successfully!")

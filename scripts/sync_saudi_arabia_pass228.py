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
print(f"Registry: {len(df_reg)}, Compile: {len(df_comp)}, Summaries: {len(df_summ)}")
print(f"Revisit Queue: {len(df_rev)}, Sources: {len(df_src)}, Evidence: {len(df_ev)}")

# New entries for Saudi Arabia
new_reg_entries = [
    {
        'territory': 'Saudi Arabia',
        'region_block': 'Gulf / Arabian Peninsula',
        'site': 'Stoor / متجر سطور — new and used books',
        'entry_type': 'single_store_used_booksellers',
        'canonical_url': 'https://sto1or.com',
        'primary_category': 'single-store used booksellers',
        'secondary_categories': 'used books; new books; Saudi Arabia; online bookstore; delivery',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass228_saudi_arabia_2026-07-19',
        'notes': 'Online store in Saudi Arabia specialized in buying and selling new and used books (بيع الكتب الجديدة والمستعملة).',
        'url_status': 'web_verified_2026_07_19'
    },
    {
        'territory': 'Saudi Arabia',
        'region_block': 'Gulf / Arabian Peninsula',
        'site': 'Nwas Store / متجر نواس — used books section',
        'entry_type': 'single_store_used_booksellers',
        'canonical_url': 'https://nwwas.com',
        'primary_category': 'single-store used booksellers',
        'secondary_categories': 'used books; books section; discount books; Saudi Arabia',
        'category_count': 1,
        'confidence': 'medium-high',
        'source_layers': 'pass228_saudi_arabia_2026-07-19',
        'notes': 'Online book store in Saudi Arabia offering a dedicated used-books section with competitive pricing.',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
for entry in new_reg_entries:
    if df_reg[df_reg['site'] == entry['site']].empty:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)

# Sync Compile CSV for Saudi Arabia
print("Syncing Compile CSV for Saudi Arabia...")
df_comp = df_comp[df_comp['territory'] != 'Saudi Arabia']

df_sa_reg = df_reg[df_reg['territory'] == 'Saudi Arabia']
comp_category_map = {
    'main universe': 'main universe',
    'main-universe candidate / current-status hold': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'annex / social resale': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'single-store used booksellers': 'single-store used booksellers',
    'single-store used / bookstore signal': 'single-store used booksellers',
    'salla_storefront': 'single-store used booksellers',
    'single-store bookstore layer': 'single-store bookstore layer',
    'weak-fit core': 'weak-fit core'
}

for _, row in df_sa_reg.iterrows():
    site_clean = str(row['site']).split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"saudi_arabia::{site_clean}"
    
    comp_row = {
        'territory': 'Saudi Arabia',
        'region_block': 'Gulf / Arabian Peninsula',
        'category': comp_category_map.get(str(row['primary_category']), 'weak-fit core'),
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
        'territory': 'Saudi Arabia',
        'entity': 'Stoor / متجر سطور — new and used books',
        'source_url': 'https://sto1or.com',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Online store in Saudi Arabia specialized in buying and selling new and used books.'
    },
    {
        'territory': 'Saudi Arabia',
        'entity': 'Nwas Store / متجر نواس — used books section',
        'source_url': 'https://nwwas.com',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Online book store in Saudi Arabia offering a dedicated used-books section.'
    }
]

for src in new_sources:
    if df_src[(df_src['territory'] == 'Saudi Arabia') & (df_src['entity'] == src['entity'])].empty:
        df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence rows
print("Appending new entries to Evidence Ledger...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass228_saudi_arabia',
        'territory': 'Saudi Arabia',
        'entry': 'Stoor / متجر سطور — new and used books',
        'category': 'single-store used booksellers',
        'confidence': 'high',
        'canonical_url': 'https://sto1or.com',
        'source_url': 'https://sto1or.com',
        'evidence_ref': 'P228_Stoor',
        'note': 'Online store in Saudi Arabia for new and used books.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'single_store_used_booksellers',
        'evidence_note': 'Used and new online bookstore.',
        'evidence_kind': 'supporting_classification_evidence'
    },
    {
        'bridge_stamp': '2026-07-19_pass228_saudi_arabia',
        'territory': 'Saudi Arabia',
        'entry': 'Nwas Store / متجر نواس — used books section',
        'category': 'single-store used booksellers',
        'confidence': 'medium-high',
        'canonical_url': 'https://nwwas.com',
        'source_url': 'https://nwwas.com',
        'evidence_ref': 'P228_NwasStore',
        'note': 'Online book store in Saudi Arabia with dedicated used-books section.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'single_store_used_booksellers',
        'evidence_note': 'Online book store with used books.',
        'evidence_kind': 'supporting_classification_evidence'
    }
]

for ev in new_evidence:
    if df_ev[(df_ev['territory'] == 'Saudi Arabia') & (df_ev['entry'] == ev['entry'])].empty:
        df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Territory Summaries for Saudi Arabia
print("Updating Territory Summaries for Saudi Arabia...")
df_sa_comp = df_comp[df_comp['territory'] == 'Saudi Arabia']
site_count = len(df_sa_comp)
row_count = len(df_sa_comp)

comp_counts = df_sa_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main universe', 0))
weak_fit_count = int(comp_counts.get('weak-fit core', 0))
single_store_used_count = int(comp_counts.get('single-store used booksellers', 0))
single_store_bookstore_count = int(comp_counts.get('single-store bookstore layer', 0))
annex_classifieds_count = int(comp_counts.get('annex / classifieds', 0))
offline_fair_count = int(comp_counts.get('offline / fair / literacy layer', 0))

print(f"Saudi Arabia Category counts:")
print(f"Total Sites/Rows: {site_count}")
print(f"Main Universe: {main_univ_count}")
print(f"Weak-Fit Core: {weak_fit_count}")
print(f"Single Store Used Booksellers: {single_store_used_count}")
print(f"Single Store Bookstore Layer: {single_store_bookstore_count}")
print(f"Annex Classifieds: {annex_classifieds_count}")
print(f"Offline Fair / Literacy Layer: {offline_fair_count}")

idx = df_summ[df_summ['territory'] == 'Saudi Arabia'].index[0]
df_summ.loc[idx, 'site_count'] = site_count
df_summ.loc[idx, 'row_count'] = row_count
df_summ.loc[idx, 'main_universe'] = main_univ_count
df_summ.loc[idx, 'weak_fit_core'] = weak_fit_count
df_summ.loc[idx, 'single_store_used_booksellers'] = single_store_used_count
df_summ.loc[idx, 'single_store_bookstore_layer'] = single_store_bookstore_count
df_summ.loc[idx, 'annex_classifieds'] = annex_classifieds_count
df_summ.loc[idx, 'offline_fair_literacy_layer'] = offline_fair_count
df_summ.loc[idx, 'categories_present'] = 'annex / classifieds; main universe; offline / fair / literacy layer; single-store used booksellers; weak-fit core'
df_summ.loc[idx, 'used_book_signal_note'] = (
    'Pass 228 added Stoor (new and used books) and Nwas Store (dedicated used books section) to single-store used booksellers. '
    'Rofoof and Mrrha confirmed as recommerce/reuse candidates.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Saudi Arabia has strong recommerce/reuse platforms (Mrrha, Rofoof), multiple specialized secondhand booksellers (Stoor, Nwas, The First Page, Antique4k, Tawg Alhamamah), '
    'major bookstore infrastructure (Jarir, Darussalam, Bookccino, Dahleez, Night Owl), book fairs (Riyadh International Book Fair), and Haraj classifieds. '
    '18 active spiders built in pass220.'
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
print("All Saudi Arabia files synchronized successfully!")

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

# New entries for Pakistan
new_reg_entries = [
    {
        'territory': 'Pakistan',
        'region_block': 'South Asia',
        'site': 'Saeed Book Bank — Islamabad bookstore',
        'entry_type': 'bookstore',
        'canonical_url': 'https://saeedbookbank.com',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'academic books; general literature; imported books; online bookstore',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass225_pakistan_2026-07-19',
        'notes': 'Major historic bookstore and online book retailer based in Islamabad, offering a vast collection of academic, medical, technical, and general books.',
        'url_status': 'web_verified_2026_07_19'
    },
    {
        'territory': 'Pakistan',
        'region_block': 'South Asia',
        'site': 'Booknet Pakistan — online bookstore',
        'entry_type': 'bookstore',
        'canonical_url': 'https://booknet.com.pk',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'online bookstore; novels; academic books; magazines',
        'category_count': 1,
        'confidence': 'medium-high',
        'source_layers': 'pass225_pakistan_2026-07-19',
        'notes': 'Online bookstore in Pakistan offering a large catalog of novels, magazines, and educational books with nationwide delivery.',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
for entry in new_reg_entries:
    if df_reg[df_reg['site'] == entry['site']].empty:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)

# Sync Compile CSV for Pakistan
print("Syncing Compile CSV for Pakistan...")
df_comp = df_comp[df_comp['territory'] != 'Pakistan']

df_pk_reg = df_reg[df_reg['territory'] == 'Pakistan']
comp_category_map = {
    'main universe': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'annex / social resale': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'offline / used-book market': 'offline / fair / literacy layer',
    'single-store used-bookseller': 'single-store used booksellers',
    'single-store used booksellers': 'single-store used booksellers',
    'single-store bookstore layer': 'single-store bookstore layer',
    'weak-fit core': 'weak-fit core'
}

for _, row in df_pk_reg.iterrows():
    site_clean = str(row['site']).split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"pakistan::{site_clean}"
    
    comp_row = {
        'territory': 'Pakistan',
        'region_block': 'South Asia',
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
        'territory': 'Pakistan',
        'entity': 'Saeed Book Bank — Islamabad bookstore',
        'source_url': 'https://saeedbookbank.com',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Major historic bookstore and online book retailer based in Islamabad.'
    },
    {
        'territory': 'Pakistan',
        'entity': 'Booknet Pakistan — online bookstore',
        'source_url': 'https://booknet.com.pk',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Online bookstore offering novels, magazines, and educational books across Pakistan.'
    }
]

for src in new_sources:
    if df_src[(df_src['territory'] == 'Pakistan') & (df_src['entity'] == src['entity'])].empty:
        df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence rows
print("Appending new entries to Evidence Ledger...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass225_pakistan',
        'territory': 'Pakistan',
        'entry': 'Saeed Book Bank — Islamabad bookstore',
        'category': 'single-store bookstore layer',
        'confidence': 'high',
        'canonical_url': 'https://saeedbookbank.com',
        'source_url': 'https://saeedbookbank.com',
        'evidence_ref': 'P225_SaeedBookBank',
        'note': 'Major historic bookstore in Islamabad offering academic, medical, and general books.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore',
        'evidence_note': 'Historic Islamabad bookstore.',
        'evidence_kind': 'supporting_classification_evidence'
    },
    {
        'bridge_stamp': '2026-07-19_pass225_pakistan',
        'territory': 'Pakistan',
        'entry': 'Booknet Pakistan — online bookstore',
        'category': 'single-store bookstore layer',
        'confidence': 'medium-high',
        'canonical_url': 'https://booknet.com.pk',
        'source_url': 'https://booknet.com.pk',
        'evidence_ref': 'P225_Booknet',
        'note': 'Online bookstore in Pakistan.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore',
        'evidence_note': 'Online book retailer.',
        'evidence_kind': 'supporting_classification_evidence'
    }
]

for ev in new_evidence:
    if df_ev[(df_ev['territory'] == 'Pakistan') & (df_ev['entry'] == ev['entry'])].empty:
        df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Territory Summaries for Pakistan
print("Updating Territory Summaries for Pakistan...")
df_pk_comp = df_comp[df_comp['territory'] == 'Pakistan']
site_count = len(df_pk_comp)
row_count = len(df_pk_comp)

comp_counts = df_pk_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main universe', 0))
weak_fit_count = int(comp_counts.get('weak-fit core', 0))
single_store_used_count = int(comp_counts.get('single-store used booksellers', 0))
single_store_bookstore_count = int(comp_counts.get('single-store bookstore layer', 0))
annex_classifieds_count = int(comp_counts.get('annex / classifieds', 0))
offline_fair_count = int(comp_counts.get('offline / fair / literacy layer', 0))

print(f"Pakistan Category counts:")
print(f"Total Sites/Rows: {site_count}")
print(f"Main Universe: {main_univ_count}")
print(f"Weak-Fit Core: {weak_fit_count}")
print(f"Single Store Used Booksellers: {single_store_used_count}")
print(f"Single Store Bookstore Layer: {single_store_bookstore_count}")
print(f"Annex Classifieds: {annex_classifieds_count}")
print(f"Offline Fair / Literacy Layer: {offline_fair_count}")

idx = df_summ[df_summ['territory'] == 'Pakistan'].index[0]
df_summ.loc[idx, 'site_count'] = site_count
df_summ.loc[idx, 'row_count'] = row_count
df_summ.loc[idx, 'main_universe'] = main_univ_count
df_summ.loc[idx, 'weak_fit_core'] = weak_fit_count
df_summ.loc[idx, 'single_store_used_booksellers'] = single_store_used_count
df_summ.loc[idx, 'single_store_bookstore_layer'] = single_store_bookstore_count
df_summ.loc[idx, 'annex_classifieds'] = annex_classifieds_count
df_summ.loc[idx, 'offline_fair_literacy_layer'] = offline_fair_count
df_summ.loc[idx, 'categories_present'] = 'annex / classifieds; main universe; offline / fair / literacy layer; single-store bookstore layer; single-store used booksellers; weak-fit core'
df_summ.loc[idx, 'used_book_signal_note'] = (
    'Pass 225 added Saeed Book Bank (Islamabad) and Booknet Pakistan to single-store bookstore layer. '
    'Booksecondstory and Kitabain confirmed as active strict-main secondhand platforms. '
    'Kitab Rabta and My Book Bank confirmed as used bookseller nodes.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Pakistan has two established strict secondhand book marketplaces: Booksecondstory and Kitabain. '
    'Single-store used bookseller services include Kitab Rabta and My Book Bank. '
    'Major retail bookstores include Readings, Liberty Books, Saeed Book Bank, NBF, and Booknet. Urdu Bazaar (Karachi/Lahore) is the physical hub. '
    '20 active spiders built in pass220.'
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
print("All Pakistan files synchronized successfully!")

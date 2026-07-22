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

# New entries for Syria
new_reg_entries = [
    {
        'territory': 'Syria',
        'region_block': 'Levant / Mashriq',
        'site': 'Maktabat Al-Nouri — Damascus historic bookstore',
        'entry_type': 'bookstore',
        'canonical_url': 'https://alnouri.sy',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'Damascus bookstore; law books; literature; publisher agent; founded 1932',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass229_syria_2026-07-19',
        'notes': 'Famous historic bookstore in Damascus established in 1932 (Al-Zahra Street), supplying general literature, law books, and publisher titles.',
        'url_status': 'web_verified_2026_07_19'
    },
    {
        'territory': 'Syria',
        'region_block': 'Levant / Mashriq',
        'site': 'Maktabat Al-Nobles — Syrian online book platform & library',
        'entry_type': 'digital_library',
        'canonical_url': 'https://nobles.com.sy',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'paper books; e-books; audiobooks; Syrian online store; authors',
        'category_count': 1,
        'confidence': 'medium-high',
        'source_layers': 'pass229_syria_2026-07-19',
        'notes': 'Syrian online book platform and digital library offering physical paper books, e-books, and audiobooks.',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
for entry in new_reg_entries:
    if df_reg[df_reg['site'] == entry['site']].empty:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)

# Sync Compile CSV for Syria
print("Syncing Compile CSV for Syria...")
df_comp = df_comp[df_comp['territory'] != 'Syria']

df_sy_reg = df_reg[df_reg['territory'] == 'Syria']
comp_category_map = {
    'main universe': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'single-store used booksellers': 'single-store used booksellers',
    'single-store bookstore layer': 'single-store bookstore layer',
    'weak-fit core': 'weak-fit core'
}

for _, row in df_sy_reg.iterrows():
    site_clean = str(row['site']).split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"syria::{site_clean}"
    
    comp_row = {
        'territory': 'Syria',
        'region_block': 'Levant / Mashriq',
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
        'territory': 'Syria',
        'entity': 'Maktabat Al-Nouri — Damascus historic bookstore',
        'source_url': 'https://alnouri.sy',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Historic bookstore in Damascus established in 1932 supplying literature and law titles.'
    },
    {
        'territory': 'Syria',
        'entity': 'Maktabat Al-Nobles — Syrian online book platform & library',
        'source_url': 'https://nobles.com.sy',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Syrian online book platform offering physical paper books, e-books, and audiobooks.'
    }
]

for src in new_sources:
    if df_src[(df_src['territory'] == 'Syria') & (df_src['entity'] == src['entity'])].empty:
        df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence rows
print("Appending new entries to Evidence Ledger...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass229_syria',
        'territory': 'Syria',
        'entry': 'Maktabat Al-Nouri — Damascus historic bookstore',
        'category': 'single-store bookstore layer',
        'confidence': 'high',
        'canonical_url': 'https://alnouri.sy',
        'source_url': 'https://alnouri.sy',
        'evidence_ref': 'P229_AlNouri',
        'note': '1932 historic bookstore in Damascus.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore',
        'evidence_note': 'Historic Damascus bookstore.',
        'evidence_kind': 'supporting_classification_evidence'
    },
    {
        'bridge_stamp': '2026-07-19_pass229_syria',
        'territory': 'Syria',
        'entry': 'Maktabat Al-Nobles — Syrian online book platform & library',
        'category': 'single-store bookstore layer',
        'confidence': 'medium-high',
        'canonical_url': 'https://nobles.com.sy',
        'source_url': 'https://nobles.com.sy',
        'evidence_ref': 'P229_AlNobles',
        'note': 'Online Syrian bookstore and digital library.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'digital_library',
        'evidence_note': 'Online paper/ebook store.',
        'evidence_kind': 'supporting_classification_evidence'
    }
]

for ev in new_evidence:
    if df_ev[(df_ev['territory'] == 'Syria') & (df_ev['entry'] == ev['entry'])].empty:
        df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Territory Summaries for Syria
print("Updating Territory Summaries for Syria...")
df_sy_comp = df_comp[df_comp['territory'] == 'Syria']
site_count = len(df_sy_comp)
row_count = len(df_sy_comp)

comp_counts = df_sy_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main universe', 0))
weak_fit_count = int(comp_counts.get('weak-fit core', 0))
single_store_used_count = int(comp_counts.get('single-store used booksellers', 0))
single_store_bookstore_count = int(comp_counts.get('single-store bookstore layer', 0))
annex_classifieds_count = int(comp_counts.get('annex / classifieds', 0))
offline_fair_count = int(comp_counts.get('offline / fair / literacy layer', 0))

print(f"Syria Category counts:")
print(f"Total Sites/Rows: {site_count}")
print(f"Main Universe: {main_univ_count}")
print(f"Weak-Fit Core: {weak_fit_count}")
print(f"Single Store Used Booksellers: {single_store_used_count}")
print(f"Single Store Bookstore Layer: {single_store_bookstore_count}")
print(f"Annex Classifieds: {annex_classifieds_count}")
print(f"Offline Fair / Literacy Layer: {offline_fair_count}")

idx = df_summ[df_summ['territory'] == 'Syria'].index[0]
df_summ.loc[idx, 'site_count'] = site_count
df_summ.loc[idx, 'row_count'] = row_count
df_summ.loc[idx, 'main_universe'] = main_univ_count
df_summ.loc[idx, 'weak_fit_core'] = weak_fit_count
df_summ.loc[idx, 'single_store_used_booksellers'] = single_store_used_count
df_summ.loc[idx, 'single_store_bookstore_layer'] = single_store_bookstore_count
df_summ.loc[idx, 'annex_classifieds'] = annex_classifieds_count
df_summ.loc[idx, 'offline_fair_literacy_layer'] = offline_fair_count
df_summ.loc[idx, 'categories_present'] = 'annex / classifieds; offline / fair / literacy layer; single-store bookstore layer; single-store used booksellers; weak-fit core'
df_summ.loc[idx, 'used_book_signal_note'] = (
    'Pass 229 added Maktabat Al-Nouri (1932 Damascus historic bookstore) and Maktabat Al-Nobles (Syrian digital library/store) to single-store bookstore layer. '
    'Used books circulate via Bando classifieds, Facebook groups (Damascus/Aleppo), and Al-Halbouni market.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Syria has active bookstore ecommerce (Ketab Store, Shorfto, Chamona, Maktabat Al-Nouri, Maktabat Al-Nobles, Dar Beiruti), '
    'offline book fairs (Damascus International Book Fair), Al-Halbouni market seams, and horizontal used-book classifieds (BandoAds, Facebook groups). '
    '3 active spiders built in pass220.'
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
print("All Syria files synchronized successfully!")

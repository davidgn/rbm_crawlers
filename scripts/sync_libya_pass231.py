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

# New entries for Libya
new_reg_entries = [
    {
        'territory': 'Libya',
        'region_block': 'North Africa / Maghreb',
        'site': 'Dar Al-Ruwad / دار الرواد للنشر والتوزيع — Tripoli bookstore-publisher',
        'entry_type': 'bookstore_publisher_layer',
        'canonical_url': 'https://alruwad.ly',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'Tripoli bookstore; publisher; Oxford Cambridge distributor; academic books; literature',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass231_libya_2026-07-19',
        'notes': 'Established bookstore and publisher in Tripoli (That El-Emad complex) founded in 1990, providing academic, history, law, and international literature.',
        'url_status': 'web_verified_2026_07_19'
    },
    {
        'territory': 'Libya',
        'region_block': 'North Africa / Maghreb',
        'site': 'Tripoli International Library — Hay Al-Andalous flagship',
        'entry_type': 'bookstore',
        'canonical_url': 'https://tripolibooks.ly',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'Tripoli bookstore; Hay Al-Andalous; academic books; scientific titles; literature',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass231_libya_2026-07-19',
        'notes': 'Major retail bookstore in Hay Al-Andalous, Tripoli, featuring extensive collections of academic, scientific, and literary works across Libya.',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
legacy_tripoli = (
    (df_reg['territory'] == 'Libya')
    & (df_reg['site'] == 'Tripoli International Library')
)
if legacy_tripoli.any():
    print("Consolidating legacy Tripoli International Library identity...")
    df_reg = df_reg[~legacy_tripoli].copy()
for entry in new_reg_entries:
    if df_reg[df_reg['site'] == entry['site']].empty:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)

# Sync Compile CSV for Libya
print("Syncing Compile CSV for Libya...")
df_comp = df_comp[df_comp['territory'] != 'Libya']

df_ly_reg = df_reg[df_reg['territory'] == 'Libya']
comp_category_map = {
    'main universe': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'single-store used booksellers': 'single-store used booksellers',
    'single-store bookstore layer': 'single-store bookstore layer',
    'weak-fit core': 'weak-fit core'
}

for _, row in df_ly_reg.iterrows():
    site_clean = str(row['site']).split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"libya::{site_clean}"
    
    comp_row = {
        'territory': 'Libya',
        'region_block': 'North Africa / Maghreb',
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
        'territory': 'Libya',
        'entity': 'Dar Al-Ruwad / دار الرواد للنشر والتوزيع — Tripoli bookstore-publisher',
        'source_url': 'https://alruwad.ly',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Established bookstore and publisher in Tripoli providing academic and international literature.'
    },
    {
        'territory': 'Libya',
        'entity': 'Tripoli International Library — Hay Al-Andalous flagship',
        'source_url': 'https://tripolibooks.ly',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Major retail bookstore in Hay Al-Andalous, Tripoli.'
    }
]

new_sources.append({
    'territory': 'Libya',
    'entity': 'Tripoli International Library — 2025 distribution partnership',
    'source_url': 'https://lana.gov.ly/post.php?id=330895&lang=en',
    'source_kind': 'supporting_identity_evidence',
    'role': 'LANA evidence for the same Tripoli International Library identity; retained as a source facet after canonical consolidation.'
})

for src in new_sources:
    if df_src[(df_src['territory'] == 'Libya') & (df_src['entity'] == src['entity'])].empty:
        df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence rows
print("Appending new entries to Evidence Ledger...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass231_libya',
        'territory': 'Libya',
        'entry': 'Dar Al-Ruwad / دار الرواد للنشر والتوزيع — Tripoli bookstore-publisher',
        'category': 'single-store bookstore layer',
        'confidence': 'high',
        'canonical_url': 'https://alruwad.ly',
        'source_url': 'https://alruwad.ly',
        'evidence_ref': 'P231_DarAlRuwad',
        'note': 'Tripoli publisher and bookstore founded 1990.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore_publisher_layer',
        'evidence_note': 'Tripoli publisher and bookstore.',
        'evidence_kind': 'supporting_classification_evidence'
    },
    {
        'bridge_stamp': '2026-07-19_pass231_libya',
        'territory': 'Libya',
        'entry': 'Tripoli International Library — Hay Al-Andalous flagship',
        'category': 'single-store bookstore layer',
        'confidence': 'high',
        'canonical_url': 'https://tripolibooks.ly',
        'source_url': 'https://tripolibooks.ly',
        'evidence_ref': 'P231_TripoliInternationalLibrary',
        'note': 'Major flagship bookstore in Hay Al-Andalous, Tripoli.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore',
        'evidence_note': 'Hay Al-Andalous bookstore.',
        'evidence_kind': 'supporting_classification_evidence'
    }
]

for ev in new_evidence:
    if df_ev[(df_ev['territory'] == 'Libya') & (df_ev['entry'] == ev['entry'])].empty:
        df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Territory Summaries for Libya
print("Updating Territory Summaries for Libya...")
df_ly_comp = df_comp[df_comp['territory'] == 'Libya']
site_count = len(df_ly_comp)
row_count = len(df_ly_comp)

comp_counts = df_ly_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main universe', 0))
weak_fit_count = int(comp_counts.get('weak-fit core', 0))
single_store_used_count = int(comp_counts.get('single-store used booksellers', 0))
single_store_bookstore_count = int(comp_counts.get('single-store bookstore layer', 0))
annex_classifieds_count = int(comp_counts.get('annex / classifieds', 0))
offline_fair_count = int(comp_counts.get('offline / fair / literacy layer', 0))

print(f"Libya Category counts:")
print(f"Total Sites/Rows: {site_count}")
print(f"Main Universe: {main_univ_count}")
print(f"Weak-Fit Core: {weak_fit_count}")
print(f"Single Store Used Booksellers: {single_store_used_count}")
print(f"Single Store Bookstore Layer: {single_store_bookstore_count}")
print(f"Annex Classifieds: {annex_classifieds_count}")
print(f"Offline Fair / Literacy Layer: {offline_fair_count}")

idx = df_summ[df_summ['territory'] == 'Libya'].index[0]
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
    'Pass 231 added Dar Al-Ruwad (Tripoli bookstore-publisher) and Tripoli International Library to single-store bookstore layer. '
    'Used-book circulation active via OpenSooq city classifieds (Tripoli, Benghazi, Misrata) and Facebook used-book groups.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Libya has an established bookstore-publisher spine in Tripoli and Benghazi (Dar Fergiani, Al-Kon Book, Dar Al-Ruwad, Tripoli International Library, Alresalah, Mobd3oon), '
    'Public Prosecutor International Book Fair 2025, single-store used sellers (Jawad Bookshop), and OpenSooq city classifieds. 5 active spiders built in pass220.'
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
print("All Libya files synchronized successfully!")

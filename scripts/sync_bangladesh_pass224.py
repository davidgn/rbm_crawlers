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

# New entry: Book Loop BD — student secondhand textbook marketplace, founded March 2026
new_reg_entries = [
    {
        'territory': 'Bangladesh',
        'region_block': 'South Asia',
        'site': 'Book Loop BD — student secondhand textbook marketplace',
        'entry_type': 'book_specific_exchange_marketplace',
        'canonical_url': 'https://bookloopbd.com',
        'primary_category': 'main universe',
        'secondary_categories': 'student textbooks; used books; sell; exchange; SSC; HSC; O-Level; A-Level',
        'category_count': 1,
        'confidence': 'medium-high',
        'source_layers': 'pass224_bangladesh_2026-07-19',
        'notes': 'Student-first structured secondhand textbook marketplace in Bangladesh. Founded March 2026. Enables students to list and find used textbooks (classes 1–12, SSC/HSC/O-Level/A-Level). Peer-to-peer exchange mechanics with a focus on affordability.',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
for entry in new_reg_entries:
    if df_reg[df_reg['site'] == entry['site']].empty:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)
    else:
        print(f"  Already exists: {entry['site']}")

# Full sync: delete and rebuild Compile rows for Bangladesh
print("Syncing Compile CSV for Bangladesh...")
df_comp = df_comp[df_comp['territory'] != 'Bangladesh']

df_bd_reg = df_reg[df_reg['territory'] == 'Bangladesh']

comp_category_map = {
    'main universe': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'annex / social resale': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'offline / exchange bookstore': 'offline / fair / literacy layer',
    'offline / used-book market': 'offline / fair / literacy layer',
    'single-store used booksellers': 'single-store used booksellers',
    'single-store bookstore layer': 'single-store bookstore layer',
    'weak-fit core': 'weak-fit core',
}

for _, row in df_bd_reg.iterrows():
    site_clean = str(row['site']).split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"bangladesh::{site_clean}"
    comp_row = {
        'territory': 'Bangladesh',
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

# Append new sources
print("Appending new sources...")
new_sources = [
    {
        'territory': 'Bangladesh',
        'entity': 'Book Loop BD — student secondhand textbook marketplace',
        'source_url': 'https://bookloopbd.com',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Student-first structured secondhand textbook marketplace founded March 2026. Peer-to-peer exchange for classes 1–12, SSC/HSC/O-Level/A-Level.'
    }
]
for src in new_sources:
    if df_src[(df_src['territory'] == 'Bangladesh') & (df_src['entity'] == src['entity'])].empty:
        df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence
print("Appending new evidence...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass224_bangladesh',
        'territory': 'Bangladesh',
        'entry': 'Book Loop BD — student secondhand textbook marketplace',
        'category': 'main universe',
        'confidence': 'medium-high',
        'canonical_url': 'https://bookloopbd.com',
        'source_url': 'https://bookloopbd.com',
        'evidence_ref': 'P224_BookLoopBD',
        'note': 'Student-first secondhand textbook marketplace. Founded March 2026. Structured peer-to-peer exchange; SSC/HSC/O-Level/A-Level scope.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'yes_conditional',
        'evidence_type': 'book_specific_exchange_marketplace',
        'evidence_note': 'New structured peer-to-peer student book marketplace; requires active-inventory reconfirmation.',
        'evidence_kind': 'primary_classification_evidence'
    }
]
for ev in new_evidence:
    if df_ev[(df_ev['territory'] == 'Bangladesh') & (df_ev['entry'] == ev['entry'])].empty:
        df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Territory Summaries
print("Updating Territory Summaries for Bangladesh...")
df_bd_comp = df_comp[df_comp['territory'] == 'Bangladesh']
site_count = len(df_bd_comp)
row_count = len(df_bd_comp)

comp_counts = df_bd_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main universe', 0))
weak_fit_count = int(comp_counts.get('weak-fit core', 0))
single_store_used_count = int(comp_counts.get('single-store used booksellers', 0))
single_store_bookstore_count = int(comp_counts.get('single-store bookstore layer', 0))
annex_classifieds_count = int(comp_counts.get('annex / classifieds', 0))
offline_fair_count = int(comp_counts.get('offline / fair / literacy layer', 0))

print(f"Bangladesh Category counts:")
print(f"  Total: {site_count}, Main: {main_univ_count}, Weak-fit: {weak_fit_count}")
print(f"  Single-store used: {single_store_used_count}, Bookstore layer: {single_store_bookstore_count}")
print(f"  Annex/classifieds: {annex_classifieds_count}, Offline/fair: {offline_fair_count}")

idx = df_summ[df_summ['territory'] == 'Bangladesh'].index[0]
df_summ.loc[idx, 'site_count'] = site_count
df_summ.loc[idx, 'row_count'] = row_count
df_summ.loc[idx, 'main_universe'] = main_univ_count
df_summ.loc[idx, 'weak_fit_core'] = weak_fit_count
df_summ.loc[idx, 'single_store_used_booksellers'] = single_store_used_count
df_summ.loc[idx, 'single_store_bookstore_layer'] = single_store_bookstore_count
df_summ.loc[idx, 'annex_classifieds'] = annex_classifieds_count
df_summ.loc[idx, 'offline_fair_literacy_layer'] = offline_fair_count
df_summ.loc[idx, 'categories_present'] = 'annex / classifieds; main universe; offline / fair / literacy layer; single-store bookstore layer; weak-fit core'
df_summ.loc[idx, 'dominant_category'] = 'main universe'
df_summ.loc[idx, 'used_book_signal_note'] = (
    'Pass 224 added Book Loop BD (student-first secondhand textbook marketplace, founded March 2026). '
    'BookCycle and Booktionary confirmed active. Rokomari confirmed as large-format online bookstore. '
    'Bangladesh Academy of Sciences and BRAC RED synced from pass220.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Bangladesh has three strong book-specific used/exchange platforms: BookCycle, Booktionary (virtual Nilkhet), and Book Loop BD. '
    'Rokomari is the dominant general online bookstore. Horizontal classifieds via Bikroy; Nilkhet is the physical offline hub. '
    '21 active spiders built in pass220.'
)

print("Saving updated CSV files...")
df_reg.to_csv(registry_path, index=False)
df_comp.to_csv(compile_path, index=False)
df_summ.to_csv(summaries_path, index=False)
df_rev.to_csv(revisit_path, index=False)
df_src.to_csv(sources_path, index=False)
df_ev.to_csv(evidence_path, index=False)

print(f"Final row counts:")
print(f"Registry: {len(df_reg)}, Compile: {len(df_comp)}, Summaries: {len(df_summ)}")
print(f"Revisit Queue: {len(df_rev)}, Sources: {len(df_src)}, Evidence: {len(df_ev)}")
print("Bangladesh sync complete!")

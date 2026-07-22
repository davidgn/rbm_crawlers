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

# New entries for Iraq
new_reg_entries = [
    {
        'territory': 'Iraq',
        'region_block': 'Levant / Mashriq',
        'site': 'Amazon Book Erbil — Kurdistan bookstore & delivery',
        'entry_type': 'bookstore',
        'canonical_url': 'https://amazonbook-erbil.com',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'Erbil bookstore; Kurdistan; English books; Arabic books; delivery',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass230_iraq_2026-07-19',
        'notes': 'Established bookstore in Erbil (Kirkuk Street) offering online book ordering and delivery across Iraq and Kurdistan Region.',
        'url_status': 'web_verified_2026_07_19'
    },
    {
        'territory': 'Iraq',
        'region_block': 'Levant / Mashriq',
        'site': 'Haval Bookstore Erbil — Kurdistan online bookstore',
        'entry_type': 'bookstore',
        'canonical_url': 'https://havalbookstore.com',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'Erbil bookstore; Kurdistan; online store; academic books',
        'category_count': 1,
        'confidence': 'medium-high',
        'source_layers': 'pass230_iraq_2026-07-19',
        'notes': 'Bookstore in Erbil, Kurdistan Region offering a dedicated online store for literature and educational titles.',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
for entry in new_reg_entries:
    if df_reg[df_reg['site'] == entry['site']].empty:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)

# Sync Compile CSV for Iraq
print("Syncing Compile CSV for Iraq...")
df_comp = df_comp[df_comp['territory'] != 'Iraq']

df_iq_reg = df_reg[df_reg['territory'] == 'Iraq']
comp_category_map = {
    'main universe': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'annex / social resale': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'offline / exchange bookstore': 'offline / fair / literacy layer',
    'single-store used booksellers': 'single-store used booksellers',
    'single-store used / bookstore signal': 'single-store used booksellers',
    'single-store bookstore layer': 'single-store bookstore layer',
    'weak-fit core': 'weak-fit core'
}

for _, row in df_iq_reg.iterrows():
    site_clean = str(row['site']).split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"iraq::{site_clean}"
    
    comp_row = {
        'territory': 'Iraq',
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
        'territory': 'Iraq',
        'entity': 'Amazon Book Erbil — Kurdistan bookstore & delivery',
        'source_url': 'https://amazonbook-erbil.com',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Established bookstore in Erbil offering online book ordering and delivery across Iraq.'
    },
    {
        'territory': 'Iraq',
        'entity': 'Haval Bookstore Erbil — Kurdistan online bookstore',
        'source_url': 'https://havalbookstore.com',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Bookstore in Erbil offering a dedicated online store.'
    }
]

for src in new_sources:
    if df_src[(df_src['territory'] == 'Iraq') & (df_src['entity'] == src['entity'])].empty:
        df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence rows
print("Appending new entries to Evidence Ledger...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass230_iraq',
        'territory': 'Iraq',
        'entry': 'Amazon Book Erbil — Kurdistan bookstore & delivery',
        'category': 'single-store bookstore layer',
        'confidence': 'high',
        'canonical_url': 'https://amazonbook-erbil.com',
        'source_url': 'https://amazonbook-erbil.com',
        'evidence_ref': 'P230_AmazonBookErbil',
        'note': 'Erbil bookstore with delivery across Iraq.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore',
        'evidence_note': 'Erbil retail bookstore and delivery.',
        'evidence_kind': 'supporting_classification_evidence'
    },
    {
        'bridge_stamp': '2026-07-19_pass230_iraq',
        'territory': 'Iraq',
        'entry': 'Haval Bookstore Erbil — Kurdistan online bookstore',
        'category': 'single-store bookstore layer',
        'confidence': 'medium-high',
        'canonical_url': 'https://havalbookstore.com',
        'source_url': 'https://havalbookstore.com',
        'evidence_ref': 'P230_HavalBookstore',
        'note': 'Online bookstore in Erbil, Kurdistan Region.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'bookstore',
        'evidence_note': 'Kurdistan online bookstore.',
        'evidence_kind': 'supporting_classification_evidence'
    }
]

for ev in new_evidence:
    if df_ev[(df_ev['territory'] == 'Iraq') & (df_ev['entry'] == ev['entry'])].empty:
        df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Territory Summaries for Iraq
print("Updating Territory Summaries for Iraq...")
df_iq_comp = df_comp[df_comp['territory'] == 'Iraq']
site_count = len(df_iq_comp)
row_count = len(df_iq_comp)

comp_counts = df_iq_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main universe', 0))
weak_fit_count = int(comp_counts.get('weak-fit core', 0))
single_store_used_count = int(comp_counts.get('single-store used booksellers', 0))
single_store_bookstore_count = int(comp_counts.get('single-store bookstore layer', 0))
annex_classifieds_count = int(comp_counts.get('annex / classifieds', 0))
offline_fair_count = int(comp_counts.get('offline / fair / literacy layer', 0))

print(f"Iraq Category counts:")
print(f"Total Sites/Rows: {site_count}")
print(f"Main Universe: {main_univ_count}")
print(f"Weak-Fit Core: {weak_fit_count}")
print(f"Single Store Used Booksellers: {single_store_used_count}")
print(f"Single Store Bookstore Layer: {single_store_bookstore_count}")
print(f"Annex Classifieds: {annex_classifieds_count}")
print(f"Offline Fair / Literacy Layer: {offline_fair_count}")

idx = df_summ[df_summ['territory'] == 'Iraq'].index[0]
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
    'Pass 230 synced pass 220 Simma and Maktabati entries, and added Amazon Book Erbil and Haval Bookstore Erbil to single-store bookstore layer. '
    'Mutanabi Shop, Kitabi Iraq, and Maktabati confirmed as main universe platforms.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Iraq has a strong book retail & exchange spine: Mutanabi Shop (Al-Mutanabbi Street, Baghdad), Kitabi Iraq, Maktabati, Simma, '
    'Erbil/Kurdistan bookstore rails (Amazon Book Erbil, Haval Bookstore, Headway), single-store used booksellers (Kotobi__), '
    'and horizontal classifieds (OpenSooq Iraq, Facebook book resale groups). 9 active spiders built in pass220.'
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
print("All Iraq files synchronized successfully!")

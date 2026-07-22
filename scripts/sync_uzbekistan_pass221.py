import pandas as pd
import numpy as np

# File paths
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

# New entries for Uzbekistan
new_reg_entries = [
    {
        'territory': 'Uzbekistan',
        'region_block': 'Caucasus / Caspian + Central Asia',
        'site': 'Kitobxon.com — e-library and online bookstore',
        'entry_type': 'site',
        'canonical_url': 'https://kitobxon.com',
        'primary_category': 'single-store bookstore layer',
        'secondary_categories': 'e-book; audiobook; paper book; bookstore',
        'category_count': 1,
        'confidence': 'medium-high',
        'source_layers': 'pass221_uzbekistan_2026-07-19',
        'notes': 'Online platform in Uzbekistan functioning as both an e-library and a bookstore. Offers e-books, audiobooks, and paper books with delivery. Established in 2014. No peer-to-peer used book marketplace verified. ISBN note: not verified in this pass.',
        'url_status': 'web_verified_2026_07_19'
    },
    {
        'territory': 'Uzbekistan',
        'region_block': 'Caucasus / Caspian + Central Asia',
        'site': 'Mehr Kutubxonasi',
        'entry_type': 'literacy_distribution',
        'canonical_url': 'https://mehrkutubxonasi.uz',
        'primary_category': 'offline / fair / literacy layer',
        'secondary_categories': 'free library; book sharing; book lending',
        'category_count': 1,
        'confidence': 'high',
        'source_layers': 'pass221_uzbekistan_2026-07-19',
        'notes': 'Volunteer-run free public library and book-sharing project in Tashkent. Users borrow books for free. Active website and Telegram bot (@mkitobot).',
        'url_status': 'web_verified_2026_07_19'
    }
]

print("Appending new entries to Registry...")
for entry in new_reg_entries:
    # Check if already exists
    if not df_reg[df_reg['canonical_url'] == entry['canonical_url']].empty:
        print(f"Entry {entry['site']} already exists in registry.")
    else:
        df_reg = pd.concat([df_reg, pd.DataFrame([entry])], ignore_index=True)

# Delete existing Uzbekistan entries in Compile to perform a clean sync from Registry
print("Syncing Compile CSV for Uzbekistan...")
df_comp = df_comp[df_comp['territory'] != 'Uzbekistan']

# Add compile rows for all Uzbekistan entries now in registry
df_uz_reg = df_reg[df_reg['territory'] == 'Uzbekistan']
comp_category_map = {
    'main universe': 'main universe',
    'annex / classifieds': 'annex / classifieds',
    'offline / fair / literacy layer': 'offline / fair / literacy layer',
    'single-store used booksellers': 'single-store used booksellers',
    'weak-fit core': 'weak-fit core',
    'single-store bookstore layer': 'weak-fit core'
}

for _, row in df_uz_reg.iterrows():
    # Helper to build slug from site name
    site_clean = row['site'].split('—')[0].strip().lower().replace('.', '_').replace(' ', '_').replace('/', '_')
    entry_key = f"uzbekistan::{site_clean}"
    
    comp_row = {
        'territory': 'Uzbekistan',
        'region_block': 'Central Asia',
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
        'territory': 'Uzbekistan',
        'entity': 'Kitobxon.com — e-library and online bookstore',
        'source_url': 'https://kitobxon.com',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Online platform in Uzbekistan functioning as both an e-library and a bookstore. Offers e-books, audiobooks, and paper books.'
    },
    {
        'territory': 'Uzbekistan',
        'entity': 'Mehr Kutubxonasi',
        'source_url': 'https://mehrkutubxonasi.uz',
        'source_kind': 'supporting_classification_evidence',
        'role': 'Volunteer-run free public library and book-sharing project in Tashkent. Users borrow books for free.'
    }
]

for src in new_sources:
    if not df_src[df_src['source_url'] == src['source_url']].empty:
         print(f"Source {src['entity']} already exists in sources.")
    else:
         df_src = pd.concat([df_src, pd.DataFrame([src])], ignore_index=True)

# Append new evidence rows
print("Appending new entries to Evidence Ledger...")
new_evidence = [
    {
        'bridge_stamp': '2026-07-19_pass221_uzbekistan',
        'territory': 'Uzbekistan',
        'entry': 'Kitobxon.com — e-library and online bookstore',
        'category': 'weak-fit core',
        'confidence': 'medium-high',
        'canonical_url': 'https://kitobxon.com',
        'source_url': 'https://kitobxon.com',
        'evidence_ref': 'P221_Kitobxon',
        'note': 'Online library and bookstore with paper book shipping. No peer-to-peer used book marketplace verified.',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'site',
        'evidence_note': 'Online library and bookstore with paper book shipping.',
        'evidence_kind': 'supporting_classification_evidence'
    },
    {
        'bridge_stamp': '2026-07-19_pass221_uzbekistan',
        'territory': 'Uzbekistan',
        'entry': 'Mehr Kutubxonasi',
        'category': 'offline / fair / literacy layer',
        'confidence': 'high',
        'canonical_url': 'https://mehrkutubxonasi.uz',
        'source_url': 'https://mehrkutubxonasi.uz',
        'evidence_ref': 'P221_MehrKutubxonasi',
        'note': 'Volunteer-run free public library and book-sharing project in Tashkent. Users borrow books for free. Active website and Telegram bot (@mkitobot).',
        'evidence_status': 'web_verified_2026_07_19',
        'strict_main_universe_fit': 'no',
        'evidence_type': 'literacy_distribution',
        'evidence_note': 'Community book sharing and lending project.',
        'evidence_kind': 'supporting_classification_evidence'
    }
]

for ev in new_evidence:
    if not df_ev[df_ev['canonical_url'] == ev['canonical_url']].empty:
         print(f"Evidence for {ev['entry']} already exists in evidence ledger.")
    else:
         df_ev = pd.concat([df_ev, pd.DataFrame([ev])], ignore_index=True)

# Update Revisit Queue statuses for Uzbekistan
print("Updating Revisit Queue...")
# We want to change the status of lines corresponding to Uzbekistan 'open_no_promotion_pass92' and 'open_hardened_pass91' to resolved.
# Let's verify by indices or text match.
# Row indices are 206 and 207 based on df.loc[[206, 207]].
# To be robust, let's select by territory and current status.
df_rev.loc[(df_rev['territory'] == 'Uzbekistan') & (df_rev['status'] == 'open_no_promotion_pass92'), 'status'] = 'resolved_pass220_active_spiders_built'
df_rev.loc[(df_rev['territory'] == 'Uzbekistan') & (df_rev['status'] == 'open_no_promotion_pass92'), 'reason'] = (
    'Pass92 recovered StartupBase Kytab/Kitob concept plus current kytab.uz / org.alilm.kitab surfaces. '
    'Current surfaces are verified as digital e-library and digital bookstore (Al-ilm), not used-book peer-to-peer sale/rental/exchange marketplace. '
    'Reconfirmed as weak-fit digital bookstore/library (no strict-main promotion).'
)

df_rev.loc[(df_rev['territory'] == 'Uzbekistan') & (df_rev['status'] == 'open_hardened_pass91'), 'status'] = 'resolved_pass220_active_spiders_built'
df_rev.loc[(df_rev['territory'] == 'Uzbekistan') & (df_rev['status'] == 'open_hardened_pass91'), 'reason'] = (
    'Pass91 captured official about-page plus AppBrain/APKPure active-app. Verified active inventory and listing depth via playwright crawler on kitabu.uz/library, '
    'confirming community used-book selling, donating, and exchanging.'
)

# Update Territory Summaries
print("Updating Territory Summaries for Uzbekistan...")
df_uz_comp = df_comp[df_comp['territory'] == 'Uzbekistan']
site_count = len(df_uz_comp)
row_count = len(df_uz_comp)

comp_counts = df_uz_comp['category'].value_counts()
main_univ_count = int(comp_counts.get('main_universe', comp_counts.get('main universe', 0)))
weak_fit_count = int(comp_counts.get('weak_fit_core', comp_counts.get('weak-fit core', 0)))
single_store_used_count = int(comp_counts.get('single_store_used_booksellers', comp_counts.get('single-store used booksellers', 0)))
annex_classifieds_count = int(comp_counts.get('annex_classifieds', comp_counts.get('annex / classifieds', 0)))
offline_fair_count = int(comp_counts.get('offline_fair_literacy_layer', comp_counts.get('offline / fair / literacy layer', 0)))

print(f"Uzbekistan Category counts:")
print(f"Main Universe: {main_univ_count}")
print(f"Weak-Fit Core: {weak_fit_count}")
print(f"Single Store Used Booksellers: {single_store_used_count}")
print(f"Annex Classifieds: {annex_classifieds_count}")
print(f"Offline Fair / Literacy Layer: {offline_fair_count}")

# Update the Uzbekistan row in Summaries
idx = df_summ[df_summ['territory'] == 'Uzbekistan'].index[0]
df_summ.loc[idx, 'site_count'] = site_count
df_summ.loc[idx, 'row_count'] = row_count
df_summ.loc[idx, 'main_universe'] = main_univ_count
df_summ.loc[idx, 'weak_fit_core'] = weak_fit_count
df_summ.loc[idx, 'single_store_used_booksellers'] = single_store_used_count
df_summ.loc[idx, 'annex_classifieds'] = annex_classifieds_count
df_summ.loc[idx, 'offline_fair_literacy_layer'] = offline_fair_count
df_summ.loc[idx, 'used_book_signal_note'] = (
    'Pass 221 added Kitobxon.com as an online bookstore and digital e-library, and Mehr Kutubxonasi as a volunteer-run free public library and book-sharing project. '
    'Kitabu.uz has active used-book selling, donating, and exchanging verified via playwright crawler.'
)
df_summ.loc[idx, 'territory_profile'] = (
    'Uzbekistan has a credible strict used-book exchange and sale marketplace via Kitabu.uz (Android app and website). '
    'Mehr Kutubxonasi operates a free public book lending and sharing project in Tashkent. '
    'Other channels include horizontal classifieds (OLX.uz) and major online bookstores (Asaxiy Books, Reads.uz, Book.uz, Hilol Nashr, Kitobxon.com).'
)

# Save all updated files back
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
print("All files synchronized successfully!")

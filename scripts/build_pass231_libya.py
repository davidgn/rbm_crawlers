import os
import shutil
import hashlib
import zipfile

files_to_package = [
    'docs/00_READ_FIRST_CAPSULE_HISTORY_RBM_PASS230_TO_PASS231_LIBYA_2026-07-21.md',
    'docs/00_READ_FIRST_CONTINUITY_HANDOFF_RBM_POST_PASS231_LIBYA_2026-07-21.md',
    'docs/00_READ_FIRST_TECHNICAL_OBSERVATIONS_AND_DECISIONS_RBM_POST_PASS231_LIBYA_2026-07-21.md',
    'docs/00_READ_FIRST_RESUME_PROMPT_RBM_POST_PASS231_LIBYA_2026-07-21.md',
    'docs/ROW_COUNT_VALIDATION_RBM_POST_PASS231_LIBYA_2026-07-21.txt',
    'docs/CURRENT_STATE_SNAPSHOT_RBM_PASS231_LIBYA_2026-07-21.json',
    'docs/COMPLETE_CHAT_TRANSCRIPT_RBM_PASS230_TO_PASS231_LIBYA_2026-07-21.md',
    'data/rbm_all_categories_verbose_compile_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'data/rbm_canonical_site_registry_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'data/rbm_revisit_queue_post_pass220.csv',
    'data/rbm_sources_consulted_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'data/rbm_runtime_gap_bridge_evidence_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'data/rbm_territory_summaries_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'scripts/sync_libya_pass231.py'
]

temp_dir = 'temp_pass231_flat'
os.makedirs(temp_dir, exist_ok=True)

print("Copying files to flat directory...")
for f in files_to_package:
    shutil.copy(f, temp_dir)

shutil.copy('scripts/build_pass231_libya.py', temp_dir)

print("Computing SHA256 sums...")
hashes = {}
for filename in sorted(os.listdir(temp_dir)):
    filepath = os.path.join(temp_dir, filename)
    h = hashlib.sha256()
    with open(filepath, 'rb') as file_bin:
        while True:
            chunk = file_bin.read(65536)
            if not chunk:
                break
            h.update(chunk)
    hashes[filename] = h.hexdigest()

sums_filename = 'SHA256SUMS_RBM_POST_PASS231_LIBYA_2026-07-21.txt'
sums_filepath = os.path.join(temp_dir, sums_filename)
with open(sums_filepath, 'w') as sf:
    for filename, filehash in sorted(hashes.items()):
        sf.write(f"{filehash}  {filename}\n")

shutil.copy(sums_filepath, 'docs/')

zip_filename = 'rbm_checkpoint_handoff_FLAT_ROOT_2026-07-21_post_pass231_libya_v1.zip'
print(f"Creating flat ZIP archive: {zip_filename}...")
with zipfile.ZipFile(zip_filename, 'w', zipfile.ZIP_DEFLATED) as zip_file:
    for filename in sorted(os.listdir(temp_dir)):
        filepath = os.path.join(temp_dir, filename)
        zip_file.write(filepath, arcname=filename)

os.makedirs('artifacts', exist_ok=True)
shutil.copy(zip_filename, 'artifacts/')
shutil.rmtree(temp_dir)

print("Done! flat ZIP archive created and saved to:")
print(f"- {os.path.abspath(zip_filename)}")
print(f"- {os.path.abspath(os.path.join('artifacts', zip_filename))}")

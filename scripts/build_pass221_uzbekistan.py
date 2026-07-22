import os
import shutil
import hashlib
import zipfile

# Files to package
files_to_package = [
    'docs/00_READ_FIRST_CAPSULE_HISTORY_RBM_PASS217_TO_PASS221_UZBEKISTAN_2026-07-19.md',
    'docs/00_READ_FIRST_CONTINUITY_HANDOFF_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.md',
    'docs/00_READ_FIRST_TECHNICAL_OBSERVATIONS_AND_DECISIONS_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.md',
    'docs/00_READ_FIRST_RESUME_PROMPT_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.md',
    'docs/ROW_COUNT_VALIDATION_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.txt',
    'docs/CURRENT_STATE_SNAPSHOT_RBM_PASS221_UZBEKISTAN_2026-07-19.json',
    'docs/COMPLETE_CHAT_TRANSCRIPT_RBM_PASS217_TO_PASS221_UZBEKISTAN_2026-07-19.md',
    'data/rbm_all_categories_verbose_compile_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'data/rbm_canonical_site_registry_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'data/rbm_revisit_queue_post_pass220.csv',
    'data/rbm_sources_consulted_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'data/rbm_runtime_gap_bridge_evidence_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'data/rbm_territory_summaries_2026-05-06_pass217_russia_final_saturation_cleanup.csv',
    'scripts/sync_uzbekistan_pass221.py'
]

temp_dir = 'temp_pass221_flat'
os.makedirs(temp_dir, exist_ok=True)

print("Copying files to flat directory...")
for f in files_to_package:
    shutil.copy(f, temp_dir)

# Add this build script itself to the flat bundle as well
shutil.copy('scripts/build_pass221_uzbekistan.py', temp_dir)

# Compute sha256 sums
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

# Write SHA256SUMS file
sums_filename = 'SHA256SUMS_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.txt'
sums_filepath = os.path.join(temp_dir, sums_filename)
with open(sums_filepath, 'w') as sf:
    for filename, filehash in sorted(hashes.items()):
        sf.write(f"{filehash}  {filename}\n")

# Copy the SHA256SUMS file back to docs/
shutil.copy(sums_filepath, 'docs/')

# Create the zip file
zip_filename = 'rbm_checkpoint_handoff_FLAT_ROOT_2026-07-19_post_pass221_uzbekistan_v1.zip'
print(f"Creating flat ZIP archive: {zip_filename}...")
with zipfile.ZipFile(zip_filename, 'w', zipfile.ZIP_DEFLATED) as zip_file:
    for filename in sorted(os.listdir(temp_dir)):
        # Make sure we add the SHA256SUMS file to the zip as well
        filepath = os.path.join(temp_dir, filename)
        zip_file.write(filepath, arcname=filename)

# Also copy zip to data/ or docs/ just in case
os.makedirs('artifacts', exist_ok=True)
shutil.copy(zip_filename, 'artifacts/')

# Clean up temporary directory
shutil.rmtree(temp_dir)

# Verify counts and hashes
print("Done! flat ZIP archive created and saved to:")
print(f"- {os.path.abspath(zip_filename)}")
print(f"- {os.path.abspath(os.path.join('artifacts', zip_filename))}")
print(f"Final files in ZIP:")
with zipfile.ZipFile(zip_filename, 'r') as zf:
    for name in zf.namelist():
        print(f"  {name}")

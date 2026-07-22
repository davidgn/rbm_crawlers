import hashlib
import os
import shutil
import zipfile


FILES = [
    "docs/00_READ_FIRST_CAPSULE_HISTORY_RBM_PASS231_TO_PASS232_PALESTINE_2026-07-22.md",
    "docs/00_READ_FIRST_CONTINUITY_HANDOFF_RBM_POST_PASS232_PALESTINE_2026-07-22.md",
    "docs/00_READ_FIRST_TECHNICAL_OBSERVATIONS_AND_DECISIONS_RBM_POST_PASS232_PALESTINE_2026-07-22.md",
    "docs/00_READ_FIRST_RESUME_PROMPT_RBM_POST_PASS232_PALESTINE_2026-07-22.md",
    "docs/ROW_COUNT_VALIDATION_RBM_POST_PASS232_PALESTINE_2026-07-22.txt",
    "docs/CURRENT_STATE_SNAPSHOT_RBM_PASS232_PALESTINE_2026-07-22.json",
    "data/rbm_all_categories_verbose_compile_2026-05-06_pass217_russia_final_saturation_cleanup.csv",
    "data/rbm_canonical_site_registry_2026-05-06_pass217_russia_final_saturation_cleanup.csv",
    "data/rbm_revisit_queue_post_pass220.csv",
    "data/rbm_sources_consulted_2026-05-06_pass217_russia_final_saturation_cleanup.csv",
    "data/rbm_runtime_gap_bridge_evidence_2026-05-06_pass217_russia_final_saturation_cleanup.csv",
    "data/rbm_territory_summaries_2026-05-06_pass217_russia_final_saturation_cleanup.csv",
    "scripts/sync_palestine_pass232.py",
]
TEMP = "temp_pass232_flat"
SUMS = "SHA256SUMS_RBM_POST_PASS232_PALESTINE_2026-07-22.txt"
ARCHIVE = "rbm_checkpoint_handoff_FLAT_ROOT_2026-07-22_post_pass232_palestine_v1.zip"

os.makedirs(TEMP, exist_ok=True)
for source in FILES:
    shutil.copy(source, TEMP)
shutil.copy(__file__, TEMP)

hashes = {}
for filename in sorted(os.listdir(TEMP)):
    digest = hashlib.sha256()
    with open(os.path.join(TEMP, filename), "rb") as handle:
        for chunk in iter(lambda: handle.read(65536), b""):
            digest.update(chunk)
    hashes[filename] = digest.hexdigest()

with open(os.path.join(TEMP, SUMS), "w", encoding="utf-8") as handle:
    for filename, digest in sorted(hashes.items()):
        handle.write(f"{digest}  {filename}\n")
shutil.copy(os.path.join(TEMP, SUMS), "docs")

with zipfile.ZipFile(ARCHIVE, "w", zipfile.ZIP_DEFLATED) as archive:
    for filename in sorted(os.listdir(TEMP)):
        archive.write(os.path.join(TEMP, filename), arcname=filename)
os.makedirs("artifacts", exist_ok=True)
shutil.copy(ARCHIVE, "artifacts")
shutil.rmtree(TEMP)
print(ARCHIVE)

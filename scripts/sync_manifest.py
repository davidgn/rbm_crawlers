import sys

path_dispatch = '/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service/lib/reconcile_dispatch.py'
path_manifest = '/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service/lib/schemas/manifest.py'

from lib.reconcile_dispatch import DIRECT_HANDLERS
from lib.schemas.manifest import DEFAULT_TYPE_IDS

missing_ids = [k for k in DIRECT_HANDLERS.keys() if k not in DEFAULT_TYPE_IDS]

if not missing_ids:
    print("Manifest is already in sync!")
    sys.exit(0)

print(f"Adding {len(missing_ids)} missing IDs to manifest...")

with open(path_manifest, 'r') as f:
    lines = f.readlines()

new_lines = []
inserted = False
for line in lines:
    new_lines.append(line)
    if 'DEFAULT_TYPE_IDS = [' in line and not inserted:
        for mid in missing_ids:
            new_lines.append(f"    '{mid}',\n")
        inserted = True

with open(path_manifest, 'w') as f:
    f.writelines(new_lines)

print("Sync complete.")

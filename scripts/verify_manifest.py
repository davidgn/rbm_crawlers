import sys
sys.path.append('/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service')
try:
    from lib.schemas.manifest import manifest
    print("Manifest loaded successfully!")
    print(f"Total default types: {len(manifest['defaultTypes'])}")
except Exception as e:
    print(f"Error loading manifest: {e}")

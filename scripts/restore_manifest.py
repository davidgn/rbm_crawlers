import re

path = '/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service/lib/schemas/manifest.py'
with open(path, 'r') as f:
    content = f.read()

# Remove the faulty sections and reconstruct
content = re.sub(r'TYPE_NAME_OVERRIDES = \{', '', content)
# Just keep the structure simple: TYPE_NAME_OVERRIDES = { ... }
with open(path, 'w') as f:
    f.write(content)

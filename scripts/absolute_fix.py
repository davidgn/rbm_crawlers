import re

path = '/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service/lib/schemas/manifest.py'
with open(path, 'r') as f:
    content = f.read()

# 1. Ensure TYPE_NAME_OVERRIDES starts correctly after the list ends
content = re.sub(r'\]\n+', ']\n\nTYPE_NAME_OVERRIDES = {\n', content, count=1)

# 2. Clean up any duplicated dictionary headers or stray braces
content = re.sub(r'TYPE_NAME_OVERRIDES\s*=\s*\{', 'TYPE_NAME_OVERRIDES = {', content)
# (Actually, let's just find the list end and the labels start and clean everything in between)

list_end = content.find(']')
labels_start = content.find('TYPE_LABELS = {')

if list_end != -1 and labels_start != -1:
    header = content[:list_end+1]
    footer = content[labels_start:]
    middle = content[list_end+1:labels_start]
    
    # Clean the middle section (the dictionary entries)
    # Remove any stray "TYPE_NAME_OVERRIDES = {" or "}"
    middle = middle.replace('TYPE_NAME_OVERRIDES = {', '').replace('}', '')
    
    # Reconstruct
    new_content = header + "\n\nTYPE_NAME_OVERRIDES = {\n" + middle.strip() + "\n}\n\n" + footer
    
    # Final check for type labels indentation
    new_content = new_content.replace('TYPE_LABELS = {', 'TYPE_LABELS = {') # placeholder
    
    with open(path, 'w') as f:
        f.write(new_content)
        print("Reconstructed successfully.")
else:
    print(f"Indices not found: list_end={list_end}, labels_start={labels_start}")


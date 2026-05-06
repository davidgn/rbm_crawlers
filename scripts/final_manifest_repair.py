path = '/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service/lib/schemas/manifest.py'
with open(path, 'r') as f:
    lines = f.readlines()

new_lines = []
stop = False
for line in lines:
    if 'TYPE_LABELS = {' in line:
        stop = True
        break
    new_lines.append(line)

if stop:
    new_lines.append('}\n\n')
    new_lines.append('TYPE_LABELS = {\n')
    new_lines.append('    "Org": "Organization",\n')
    new_lines.append('    "Person": "Person",\n')
    new_lines.append('    "Personal": "Person",\n')
    new_lines.append('    "Award": "Award",\n')
    new_lines.append('    "Awards": "Award",\n')
    new_lines.append('    "Prize": "Award",\n')
    new_lines.append('    "Grant": "Award",\n')
    new_lines.append('    "Winner": "Winner",\n')
    new_lines.append('    "Fellow": "Person",\n')
    new_lines.append('    "Place": "Location",\n')
    new_lines.append('    "Location": "Location",\n')
    new_lines.append('    "Work": "Work",\n')
    new_lines.append('    "Journal": "Journal",\n')
    new_lines.append('    "Library": "Library",\n')
    new_lines.append('    "Archive": "Archive",\n')
    new_lines.append('}\n\n')
    new_lines.append('def _type_name(type_id):\n')
    new_lines.append('    if type_id in TYPE_NAME_OVERRIDES:\n')
    new_lines.append('        return TYPE_NAME_OVERRIDES[type_id]\n\n')
    new_lines.append('    parts = type_id.split("_")\n')
    new_lines.append('    label = next((TYPE_LABELS[p] for p in reversed(parts) if p in TYPE_LABELS), "Entity")\n')
    new_lines.append('    display = " ".join(parts).replace(" Id", " ID").replace(" 2", "")\n')
    new_lines.append('    return f"{label} -- {display}"\n\n')
    new_lines.append('from .manifest_footer import manifest\n') # Assuming footer is separate or just reconstruct here

with open(path, 'w') as f:
    f.writelines(new_lines)

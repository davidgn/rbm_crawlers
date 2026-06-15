
manifest_path = "/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service/lib/schemas/manifest.py"
dispatch_path = "/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service/lib/reconcile_dispatch.py"

targets = [
    ("Dictionary_of_Norwegian_Translators_ID", "P13211", "Person", "Dictionary of Norwegian Translators"),
    ("Dictionary_of_Swedish_Translators_ID", "P5147", "Person", "Dictionary of Swedish Translators"),
    ("MAPS_poet_ID", "P5509", "Person", "MAPS Poet"),
    ("Finnish_national_bibliography_corporate_name_ID", "P5266", "Organization", "Finnish National Bibliography (Org)"),
    ("A_Dictionary_of_Biology_ID", "P12774", "Work", "Oxford Dictionary of Biology"),
    ("A_Dictionary_of_Contemporary_Icelandic_ID", "P12790", "Work", "Dictionary of Contemporary Icelandic"),
    ("A_Dictionary_of_Media_and_Communication_entry_ID", "P13542", "Work", "Oxford Dict of Media & Communication"),
    ("A_Dictionary_of_Sociology_entry_ID", "P13277", "Work", "Oxford Dictionary of Sociology"),
    ("A_Dictionary_of_Geography_entry_ID", "P13276", "Work", "Oxford Dictionary of Geography"),
    ("A_Dictionary_of_Education_entry_ID", "P13431", "Work", "Oxford Dictionary of Education"),
    ("A_Dictionary_of_Plant_Sciences_ID", "P12788", "Work", "Oxford Dictionary of Plant Sciences"),
    ("A_Dictionary_of_Zoology_ID", "P12789", "Work", "Oxford Dictionary of Zoology"),
    ("Alabama_Authors_ID", "P11831", "Person", "Alabama Authors"),
    ("Alsharekh_Archive_author_ID", "P9792", "Person", "Alsharekh Archive Arabic Author"),
    ("Acervo_de_Literatura_Digital_Mato-Grossense_person_ID", "P13075", "Person", "Literatura Digital Mato-Grossense"),
    ("Anglo-Norman_Dictionary_entry", "P12441", "Work", "Anglo-Norman Dictionary"),
    ("Archives_de_la_critique_d_art_author_ID", "P6635", "Person", "Archives de la critique d'art"),
    ("ASCAP_ACE_Repertory_publisher_ID", "P10550", "Organization", "ASCAP ACE Repertory Publisher"),
    ("Associacio_d_Escriptors_en_Llengua_Catalana_author_ID", "P13086", "Person", "Catalan Writers (AELC)"),
    ("Association_francaise_pour_l_avancement_des_sciences_ID", "P6038", "Person", "AFAS Scholarly Profiles"),
    ("Australian_Dictionary_of_Biography_ID", "P1907", "Person", "Australian Dictionary of Biography"),
    ("Bologna_Children_s_Book_Fair_exhibitor_ID", "P11634", "Organization", "Bologna Book Fair Exhibitor"),
    ("Book_Industry_Communication_ID", "P12130", "Organization", "Book Industry Communication"),
    ("Book_Trust_author_ID", "P11739", "Person", "Book Trust Author"),
    ("Book_Web_Taiwan_author_ID", "P11578", "Person", "Book Web Taiwan Author"),
    ("British_Council_Writers_ID", "P5364", "Person", "British Council Writers"),
    ("Cambridge_University_Press_book_ID", "P12847", "Work", "Cambridge University Press Book"),
    ("Catalogo_Informatizzato_delle_Riviste_Italiane_ID", "P11942", "Work", "Italian Journals (CIRI)"),
    ("Centro_de_Documentacion_de_las_Artes_Escenicas_ID", "P12389", "Person", "Spanish Performing Arts Doc"),
    ("Chambers_Biographical_Dictionary_ID", "P11235", "Person", "Chambers Biographical Dictionary")
]

# 1. Update manifest.py
with open(manifest_path, 'r') as f:
    lines = f.readlines()

# Find insert point for DEFAULT_TYPE_IDS
for i, line in enumerate(lines):
    if "'VIAF_Personal']" in line:
        new_ids_lines = [f"    '{t[0]}',\n" for t in targets]
        lines[i] = line.replace("'VIAF_Personal']", "'VIAF_Personal',")
        lines.insert(i+1, "".join(new_ids_lines) + "]\n")
        break

# Find insert point for TYPE_NAME_OVERRIDES (ends at line 652 roughly)
for i, line in enumerate(lines):
    if "'VIAF_Personal': 'Name -- VIAF Personal'" in line:
        new_overrides = [f"    '{t[0]}': '{t[2]} -- {t[3]}',\n" for t in targets]
        lines.insert(i+1, "".join(new_overrides))
        break

with open(manifest_path, 'w') as f:
    f.writelines(lines)

# 2. Update reconcile_dispatch.py
with open(dispatch_path, 'r') as f:
    lines = f.readlines()

# Find insert point for SPARQL_PROPERTIES (starts at 324)
for i, line in enumerate(lines):
    if i > 324 and line.strip() == "}":
        new_props = [f"    '{t[0]}': ('{t[1]}', '{t[2]}', 'en'),\n" for t in targets]
        lines.insert(i, "".join(new_props))
        break

with open(dispatch_path, 'w') as f:
    f.writelines(lines)

print("Updated manifest.py and reconcile_dispatch.py with 30 new sources.")

import json
import re

manifest_path = "/home/davidgn/active_repos/openrefine-reconciliation-service/lib/schemas/manifest.py"
registry_path = "/home/davidgn/active_repos/identifier-harvesting-pipeline/data/reference/harvest_source_registry.json"

with open(manifest_path, 'r') as f:
    manifest_content = f.read()

# Extract DEFAULT_TYPE_IDS
match = re.search(r'DEFAULT_TYPE_IDS = \[(.*?)\]', manifest_content, re.DOTALL)
if match:
    type_ids_str = match.group(1)
    existing_ids = set(re.findall(r"'(.*?)'", type_ids_str))
else:
    existing_ids = set()

with open(registry_path, 'r') as f:
    registry = json.load(f)

# More specific book ecosystem sources
targets = [
    ("Dictionary_of_Norwegian_Translators_ID", "P13211", "Person"),
    ("Dictionary_of_Swedish_Translators_ID", "P5147", "Person"),
    ("MAPS_poet_ID", "P5509", "Person"),
    ("Finnish_national_bibliography_corporate_name_ID", "P5266", "Organization"),
    ("A_Dictionary_of_Biology_ID", "P12774", "Work"),
    ("A_Dictionary_of_Contemporary_Icelandic_ID", "P12790", "Work"),
    ("A_Dictionary_of_Media_and_Communication_entry_ID", "P13542", "Work"),
    ("A_Dictionary_of_Sociology_entry_ID", "P13277", "Work"),
    ("A_Dictionary_of_Geography_entry_ID", "P13276", "Work"),
    ("A_Dictionary_of_Education_entry_ID", "P13431", "Work"),
    ("A_Dictionary_of_Plant_Sciences_ID", "P12788", "Work"),
    ("A_Dictionary_of_Zoology_ID", "P12789", "Work"),
    ("Alabama_Authors_ID", "P11831", "Person"),
    ("Alsharekh_Archive_author_ID", "P9792", "Person"),
    ("Acervo_de_Literatura_Digital_Mato-Grossense_person_ID", "P13075", "Person"),
    ("Anglo-Norman_Dictionary_entry", "P12441", "Work"),
    ("Archives_de_la_critique_d_art_author_ID", "P6635", "Person"),
    ("ASCAP_ACE_Repertory_publisher_ID", "P10550", "Organization"),
    ("Associacio_d_Escriptors_en_Llengua_Catalana_author_ID", "P13086", "Person"),
    ("Association_francaise_pour_l_avancement_des_sciences_ID", "P6038", "Person"),
    ("Australian_Dictionary_of_Biography_ID", "P1907", "Person"),
    ("Bologna_Children_s_Book_Fair_exhibitor_ID", "P11634", "Organization"),
    ("Book_Industry_Communication_ID", "P12130", "Organization"),
    ("Book_Trust_author_ID", "P11739", "Person"),
    ("Book_Web_Taiwan_author_ID", "P11578", "Person"),
    ("British_Council_Writers_ID", "P5364", "Person"),
    ("Cambridge_University_Press_book_ID", "P12847", "Work"),
    ("Catalogo_Informatizzato_delle_Riviste_Italiane_ID", "P11942", "Work"),
    ("Centro_de_Documentacion_de_las_Artes_Escenicas_ID", "P12389", "Person"),
    ("Chambers_Biographical_Dictionary_ID", "P11235", "Person")
]

final_list = []
for name, prop, type_name in targets:
    if name not in existing_ids:
        # Check if a variant is in existing_ids
        variant_found = False
        for eid in existing_ids:
            if name.lower() in eid.lower() or eid.lower() in name.lower():
                # Be careful not to skip valid distinct sources
                # E.g. BookBrainz_author vs BookBrainz_work
                pass
        
        final_list.append((name, prop, type_name))

print(f"Final Selection ({len(final_list)}):")
for name, prop, type_name in final_list:
    print(f"{name}|{prop}|{type_name}")

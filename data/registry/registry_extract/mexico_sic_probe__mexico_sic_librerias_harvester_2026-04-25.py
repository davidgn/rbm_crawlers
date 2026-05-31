#!/usr/bin/env python3
import csv
import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path
from urllib.request import Request, urlopen

URLS = {
    "json": "https://sic.cultura.gob.mx/opendata/d/0_libreria_directorio.json",
    "csv": "https://sic.cultura.gob.mx/opendata/d/0_libreria_directorio.csv",
    "xml": "https://sic.cultura.gob.mx/opendata/d/0_libreria_directorio.xml",
    "metadata_xlsx": "https://sic.cultura.gob.mx/opendata/meta/0_libreria_directorio.xlsx",
}

SOURCE_NAME = "SIC Directorio de librerías y puntos de venta"
RUN_DATE = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H%M%SZ")

def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def fetch(url: str) -> bytes:
    req = Request(url, headers={"User-Agent": "Mozilla/5.0 bookstore-registry-harvester/1.0"})
    with urlopen(req, timeout=90) as r:
        return r.read()

def clean_text(v):
    if v is None:
        return ""
    return re.sub(r"\s+", " ", str(v)).strip()

def null_zero_coord(v):
    try:
        x = float(v)
    except Exception:
        return ""
    if abs(x) < 0.0000001:
        return ""
    return x

def classify(row):
    name = clean_text(row.get("libreria_nombre"))
    aff = clean_text(row.get("libreria_adscripcion"))
    txt = f"{name} {aff}".lower()
    flags = []
    chain_terms = ["sanborn", "fondo de cultura económica", "fce", "educal", "gandhi", "gonvill", "porrúa", "trillas", "san pablo", "dante"]
    if any(t in txt for t in chain_terms) or "sucursal" in txt:
        flags.append("chain_branch")
    if any(t in txt for t in ["universidad", "unam", "uady", "uaz", "suprema corte", "scjn", "inah", "museo", "instituto cultural", "secretaría de cultura", "casa de la cultura jurídica"]):
        flags.append("institutional_sales_point")
    if any(t in txt for t in ["católic", "bíblic", "religios", "san pablo", "paulinas", "maranatha"]):
        flags.append("religious_bookstore")
    if "papeler" in txt:
        flags.append("stationery_hybrid")
    if "facebook.com" in clean_text(row.get("pagina_web")).lower() or "m.facebook.com" in clean_text(row.get("pagina_web")).lower():
        flags.append("social_profile_as_website")
    if not name:
        flags.append("blank_name")
    if row.get("libreria_fecha_fundacion") == "1000-01-01":
        flags.append("sentinel_foundation_date")
    try:
        lat = float(row.get("gmaps_latitud") or 0)
        lon = float(row.get("gmaps_longitud") or 0)
        if abs(lat) < 0.0000001 and abs(lon) < 0.0000001:
            flags.append("zero_coordinate")
    except Exception:
        pass
    return ";".join(sorted(set(flags)))

def normalize_row(row):
    return {
        "country": "Mexico",
        "source_name": SOURCE_NAME,
        "source_record_id": row.get("libreria_id"),
        "entity_name": clean_text(row.get("libreria_nombre")),
        "operator_or_affiliation": clean_text(row.get("libreria_adscripcion")),
        "founding_date_raw": clean_text(row.get("libreria_fecha_fundacion")),
        "street_address": clean_text(row.get("libreria_calle_numero")),
        "neighborhood_colonia": clean_text(row.get("libreria_colonia")),
        "postal_code": clean_text(row.get("libreria_cp")),
        "phone_1": clean_text(row.get("libreria_telefono1")),
        "phone_2": clean_text(row.get("libreria_telefono2")),
        "website": clean_text(row.get("pagina_web")),
        "email": clean_text(row.get("email")),
        "latitude": null_zero_coord(row.get("gmaps_latitud")),
        "longitude": null_zero_coord(row.get("gmaps_longitud")),
        "source_state_id": row.get("estado_id"),
        "source_municipality_id": row.get("municipio_id"),
        "source_locality_id": row.get("localidad_id"),
        "state": clean_text(row.get("nom_ent")),
        "municipality": clean_text(row.get("nom_mun")),
        "locality": clean_text(row.get("nom_loc")),
        "source_record_url": clean_text(row.get("link_sic")),
        "source_modified_at": clean_text(row.get("fecha_mod")),
        "ce_flag_raw": row.get("libreria_ce"),
        "source_url": URLS["json"],
        "qa_flags": classify(row),
    }

def write_csv(path, rows, fieldnames=None):
    rows = list(rows)
    if fieldnames is None:
        fieldnames = list(rows[0].keys()) if rows else []
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fieldnames, extrasaction="ignore")
        w.writeheader()
        w.writerows(rows)

def main():
    outdir = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(f"mexico_sic_librerias_harvest_{RUN_DATE}")
    outdir.mkdir(parents=True, exist_ok=True)
    manifest = []
    raw_paths = {}
    for key, url in URLS.items():
        try:
            data = fetch(url)
            suffix = "xlsx" if key == "metadata_xlsx" else key
            raw_path = outdir / f"raw_0_libreria_directorio.{suffix}"
            raw_path.write_bytes(data)
            raw_paths[key] = str(raw_path)
            manifest.append({"artifact": raw_path.name, "url": url, "bytes": len(data), "sha256": sha256_bytes(data), "status": "downloaded"})
        except Exception as e:
            manifest.append({"artifact": f"raw_0_libreria_directorio.{key}", "url": url, "bytes": "", "sha256": "", "status": f"download_failed: {e!r}"})
    data_rows = []
    if "json" in raw_paths:
        data_rows = json.loads(Path(raw_paths["json"]).read_text(encoding="utf-8-sig"))
        normalized = [normalize_row(r) for r in data_rows]
        write_csv(outdir / "mexico_sic_librerias_normalized.csv", normalized)
        state_counts = {}
        for r in normalized:
            state_counts[r["state"]] = state_counts.get(r["state"], 0) + 1
        write_csv(outdir / "mexico_sic_librerias_state_counts_from_json.csv",
                  [{"state": k, "count": v} for k, v in sorted(state_counts.items())],
                  ["state", "count"])
        qa = {
            "run_date_utc": RUN_DATE,
            "json_row_count": len(data_rows),
            "distinct_libreria_id_count": len({r.get("libreria_id") for r in data_rows}),
            "blank_name_count": sum(1 for r in normalized if "blank_name" in r["qa_flags"]),
            "zero_coordinate_count": sum(1 for r in normalized if "zero_coordinate" in r["qa_flags"]),
            "sentinel_foundation_date_count": sum(1 for r in normalized if "sentinel_foundation_date" in r["qa_flags"]),
            "chain_branch_flag_count": sum(1 for r in normalized if "chain_branch" in r["qa_flags"]),
            "institutional_sales_point_flag_count": sum(1 for r in normalized if "institutional_sales_point" in r["qa_flags"]),
        }
        (outdir / "mexico_sic_librerias_qa_summary.json").write_text(json.dumps(qa, ensure_ascii=False, indent=2), encoding="utf-8")
    if "csv" in raw_paths and "json" in raw_paths:
        with open(raw_paths["csv"], newline="", encoding="utf-8-sig") as f:
            csv_count = sum(1 for _ in csv.DictReader(f))
        manifest.append({"artifact": "row_count_comparison", "url": "", "bytes": "", "sha256": "", "status": f"json_rows={len(data_rows)}; csv_rows={csv_count}; match={len(data_rows)==csv_count}"})
    write_csv(outdir / "download_manifest.csv", manifest, ["artifact", "url", "bytes", "sha256", "status"])
    print(f"Wrote harvest outputs to {outdir}")

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
import csv
import json
import shlex
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent
RUN_ROOT = ROOT / "runs" / datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
LOGS = RUN_ROOT / "logs"
LOGS.mkdir(parents=True, exist_ok=True)
SCRIPTS = ROOT / "scripts"

JOBS = [
    {"job_id":"mexico_sic_raw_json_csv_xml","country":"Mexico","source":"SIC Directorio de librerías y puntos de venta","source_class":"registry-grade/open-data","script":SCRIPTS/"mexico_sic_librerias_harvester.py","args":[str(RUN_ROOT/"mexico_sic")],"success_artifact":"mexico_sic/mexico_sic_librerias_normalized.csv"},
    {"job_id":"australia_bookpeople_profiles_smoke","country":"Australia","source":"BookPeople / Love Your Bookshop","source_class":"member-grade/network-grade","script":SCRIPTS/"australia_bookpeople_loveyourbookshop_harvester.py","args":["--outdir",str(RUN_ROOT/"australia_bookpeople"),"--limit","10","--sleep","0.1"],"success_artifact":"australia_bookpeople/australia_bookpeople_loveyourbookshop_normalized.csv"},
    {"job_id":"new_zealand_booksellers_profiles_smoke","country":"New Zealand","source":"Booksellers Aotearoa / BookHub","source_class":"member-grade/network-grade + inventory overlay","script":SCRIPTS/"new_zealand_booksellers_bookhub_harvester.py","args":["--outdir",str(RUN_ROOT/"new_zealand_booksellers"),"--limit","10","--sleep","0.1"],"success_artifact":"new_zealand_booksellers/new_zealand_booksellers_bookhub_normalized.csv"},
    {"job_id":"japan_kosho_profiles_smoke","country":"Japan","source":"日本の古本屋 / Kosho shop profiles","source_class":"used-antiquarian overlay/network-grade","script":SCRIPTS/"japan_ehon_kosho_harvester.py","args":["--outdir",str(RUN_ROOT/"japan_kosho"),"--limit","10","--sleep","0.1"],"success_artifact":"japan_kosho/japan_ehon_kosho_normalized.csv"},
]

def count_csv_rows(path: Path):
    if not path.exists(): return None
    with path.open("r", encoding="utf-8", errors="replace", newline="") as f:
        return max(0, sum(1 for _ in csv.reader(f)) - 1)

results=[]
for job in JOBS:
    cmd=[sys.executable, str(job["script"])] + job["args"]
    start=datetime.now(timezone.utc)
    log_prefix=LOGS/job["job_id"]
    try:
        proc=subprocess.run(cmd,cwd=str(ROOT),text=True,capture_output=True,timeout=900)
        exit_code=proc.returncode; stdout=proc.stdout; stderr=proc.stderr
    except Exception as e:
        exit_code=-999; stdout=""; stderr=repr(e)
    log_prefix.with_suffix(".stdout.txt").write_text(stdout,encoding="utf-8")
    log_prefix.with_suffix(".stderr.txt").write_text(stderr,encoding="utf-8")
    success_path=RUN_ROOT/job["success_artifact"]
    row_count=count_csv_rows(success_path)
    status="ok" if exit_code==0 and row_count and row_count>0 else "blocked_or_empty"
    results.append({"job_id":job["job_id"],"country":job["country"],"source":job["source"],"source_class":job["source_class"],"command":" ".join(shlex.quote(x) for x in cmd),"exit_code":exit_code,"status":status,"normalized_row_count":"" if row_count is None else row_count,"success_artifact_rel":job["success_artifact"],"stdout_log":str(log_prefix.with_suffix(".stdout.txt").relative_to(ROOT)),"stderr_log":str(log_prefix.with_suffix(".stderr.txt").relative_to(ROOT)),"started_at_utc":start.isoformat(),"finished_at_utc":datetime.now(timezone.utc).isoformat()})
fields=["job_id","country","source","source_class","command","exit_code","status","normalized_row_count","success_artifact_rel","stdout_log","stderr_log","started_at_utc","finished_at_utc"]
with (RUN_ROOT/"first_executable_harvest_queue_results.csv").open("w",newline="",encoding="utf-8") as f:
    w=csv.DictWriter(f,fieldnames=fields); w.writeheader(); w.writerows(results)
(RUN_ROOT/"first_executable_harvest_queue_results.json").write_text(json.dumps({"run_root":str(RUN_ROOT),"jobs":results},indent=2,ensure_ascii=False),encoding="utf-8")
print(json.dumps({"run_root":str(RUN_ROOT),"jobs":results},indent=2,ensure_ascii=False))

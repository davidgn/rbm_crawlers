#!/usr/bin/env python3
"""Run a bounded smoke matrix for spider entrypoints and write a JSON report."""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"


def line_count(path: Path) -> int:
    if not path.exists():
        return 0
    with path.open(encoding="utf-8") as handle:
        return sum(1 for line in handle if line.strip())


def module_config(path: Path):
    import importlib.util

    sys.path.insert(0, str(SRC))
    spec = importlib.util.spec_from_file_location(f"_smoke_{path.stem}", path)
    if spec is None or spec.loader is None:
        return None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return getattr(module, "CONFIG", None)


def paths_for_config(config) -> tuple[Path, Path]:
    output = SRC / "data" / f"{config.platform_name.lower().replace('.', '_')}_listings.jsonl"
    cache = SRC / "cache" / config.platform_name.lower().replace(".", "_")
    return output, cache


def cache_count(path: Path) -> int:
    if not path.exists():
        return 0
    return len(list(path.glob("*.html")))


def run_one(spider: str, timeout: int, limit_pages: int, limit_items: int) -> dict:
    path = ROOT / spider if not Path(spider).is_absolute() else Path(spider)
    rel = str(path.relative_to(ROOT))
    started = time.time()
    report = {"file": rel, "returncode": None, "timeout": False, "duration_s": None}
    try:
        config = module_config(path)
    except Exception as exc:
        report.update({"import_error": str(exc), "returncode": -998})
        return report
    output = cache = None
    before_lines = before_cache = 0
    if config is not None:
        output, cache = paths_for_config(config)
        before_lines = line_count(output)
        before_cache = cache_count(cache)
        report.update({"platform_name": config.platform_name, "territory": config.territory})

    cmd = [sys.executable, rel, "--limit-pages", str(limit_pages), "--limit-items", str(limit_items)]
    try:
        proc = subprocess.run(
            cmd,
            cwd=ROOT,
            text=True,
            capture_output=True,
            timeout=timeout,
        )
        report["returncode"] = proc.returncode
        report["stdout_tail"] = proc.stdout[-2000:]
        report["stderr_tail"] = proc.stderr[-4000:]
    except subprocess.TimeoutExpired as exc:
        report["returncode"] = -999
        report["timeout"] = True
        report["stdout_tail"] = (exc.stdout or "")[-2000:] if isinstance(exc.stdout, str) else ""
        report["stderr_tail"] = (exc.stderr or "")[-4000:] if isinstance(exc.stderr, str) else ""

    if output is not None and cache is not None:
        after_lines = line_count(output)
        after_cache = cache_count(cache)
        report.update(
            {
                "output_items_before": before_lines,
                "output_items_after": after_lines,
                "output_items_added": after_lines - before_lines,
                "cache_html_before": before_cache,
                "cache_html_after": after_cache,
                "cache_html_added": after_cache - before_cache,
            }
        )
    report["duration_s"] = round(time.time() - started, 2)
    return report


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("spiders", nargs="+")
    parser.add_argument("--timeout", type=int, default=60)
    parser.add_argument("--workers", type=int, default=3)
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=1)
    parser.add_argument("--json-out", required=True)
    parser.add_argument("--fail-on-nonzero", action="store_true")
    args = parser.parse_args()

    reports = []
    with ThreadPoolExecutor(max_workers=args.workers) as executor:
        futures = [
            executor.submit(run_one, spider, args.timeout, args.limit_pages, args.limit_items)
            for spider in args.spiders
        ]
        for future in as_completed(futures):
            report = future.result()
            reports.append(report)
            status = "TIMEOUT" if report["timeout"] else report["returncode"]
            print(f"{report['file']}: {status} added={report.get('output_items_added')} cache={report.get('cache_html_added')}")

    reports.sort(key=lambda item: item["file"])
    summary = {
        "files": len(reports),
        "nonzero": sum(1 for report in reports if report["returncode"] not in (0,)),
        "timeouts": sum(1 for report in reports if report["timeout"]),
        "zero_added": sum(1 for report in reports if report.get("output_items_added", 0) == 0),
        "cache_added": sum(1 for report in reports if report.get("cache_html_added", 0) > 0),
    }
    out = Path(args.json_out)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps({"summary": summary, "reports": reports}, indent=2, ensure_ascii=False), encoding="utf-8")
    print(json.dumps(summary, indent=2, ensure_ascii=False))
    if args.fail_on_nonzero and (summary["nonzero"] or summary["timeouts"]):
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

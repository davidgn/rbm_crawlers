#!/usr/bin/env python3
"""Audit CONFIG-based spider wrappers, their output JSONL, and cache metadata."""

from __future__ import annotations

import argparse
import importlib.util
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from types import ModuleType
from urllib.parse import urlparse


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
BAD_SIGNALS = (
    "/login",
    "/account",
    "/cart/",
    "/cart?",
    "/help",
    "/newitem",
    "/register",
    "privacy",
    "terms",
    "warenkorb",
    "korpa",
    "kosarica",
    "koszyk",
    "carrinho",
)


def import_module(path: Path) -> ModuleType:
    module_name = f"_audit_{path.stem}"
    spec = importlib.util.spec_from_file_location(module_name, path)
    if spec is None or spec.loader is None:
        raise ImportError(f"Could not build import spec for {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def output_path(platform_name: str) -> Path:
    return SRC / "data" / f"{platform_name.lower().replace('.', '_')}_listings.jsonl"


def cache_path(platform_name: str) -> Path:
    return SRC / "cache" / platform_name.lower().replace(".", "_")


def host_key(url: str) -> str:
    return urlparse(url).netloc.lower().removeprefix("www.")


def audit_jsonl(path: Path, config) -> dict:
    result = {
        "path": str(path.relative_to(ROOT)),
        "exists": path.exists(),
        "items": 0,
        "empty_titles": 0,
        "missing_listing_urls": 0,
        "bad_signal_urls": [],
        "host_mismatches": [],
        "index_fallback_items": 0,
        "profile_fallback_items": 0,
        "invalid_json": 0,
    }
    if not path.exists():
        return result

    allowed_hosts = {host_key(config.base_url), *(host_key(f"https://{h}") for h in config.allowed_hosts)}
    with path.open(encoding="utf-8") as handle:
        for line_number, line in enumerate(handle, 1):
            if not line.strip():
                continue
            result["items"] += 1
            try:
                item = json.loads(line)
            except json.JSONDecodeError:
                result["invalid_json"] += 1
                continue
            title = str(item.get("title") or "").strip()
            listing_url = str(item.get("listing_url") or "").strip()
            condition = str(item.get("condition") or "")
            if not title:
                result["empty_titles"] += 1
            if not listing_url:
                result["missing_listing_urls"] += 1
            else:
                lower_url = listing_url.lower()
                if any(signal in lower_url for signal in BAD_SIGNALS):
                    result["bad_signal_urls"].append({"line": line_number, "url": listing_url})
                host = host_key(listing_url)
                if host and allowed_hosts and host not in allowed_hosts:
                    result["host_mismatches"].append({"line": line_number, "url": listing_url, "host": host})
            if "Index cached" in condition:
                result["index_fallback_items"] += 1
            if "Profile cached" in condition:
                result["profile_fallback_items"] += 1
    return result


def audit_cache(path: Path, config) -> dict:
    result = {
        "path": str(path.relative_to(ROOT)),
        "exists": path.exists(),
        "html_files": 0,
        "meta_files": 0,
        "missing_meta": [],
        "bad_signal_urls": [],
        "host_mismatches": [],
        "invalid_meta_json": 0,
    }
    if not path.exists():
        return result

    allowed_hosts = {host_key(config.base_url), *(host_key(f"https://{h}") for h in config.allowed_hosts)}
    html_files = sorted(path.glob("*.html"))
    result["html_files"] = len(html_files)
    result["meta_files"] = len(list(path.glob("*.meta.json")))
    for html_file in html_files:
        meta_file = html_file.with_suffix(".meta.json")
        if not meta_file.exists():
            result["missing_meta"].append(html_file.name)
            continue
        try:
            meta = json.loads(meta_file.read_text(encoding="utf-8"))
        except json.JSONDecodeError:
            result["invalid_meta_json"] += 1
            continue
        listing_url = str(meta.get("listing_url") or "")
        lower_url = listing_url.lower()
        if any(signal in lower_url for signal in BAD_SIGNALS):
            result["bad_signal_urls"].append({"file": meta_file.name, "url": listing_url})
        host = host_key(listing_url)
        if host and allowed_hosts and host not in allowed_hosts:
            result["host_mismatches"].append({"file": meta_file.name, "url": listing_url, "host": host})
    return result


def audit_file(path: Path) -> dict:
    entry = {"file": str(path.relative_to(ROOT)), "errors": [], "has_config": False}
    try:
        module = import_module(path)
    except Exception as exc:
        entry["errors"].append(f"import failed: {exc}")
        return entry
    config = getattr(module, "CONFIG", None)
    if config is None:
        entry["errors"].append("missing CONFIG")
        return entry

    entry["has_config"] = True
    entry["platform_name"] = config.platform_name
    entry["territory"] = config.territory
    entry["base_url"] = config.base_url
    entry["social_profile"] = bool(config.social_profile)
    if "/" in config.platform_name:
        entry["errors"].append("platform_name contains slash")
    if not str(config.territory).strip():
        entry["errors"].append("empty territory")
    parsed = urlparse(config.base_url)
    if parsed.scheme not in {"http", "https"} or not parsed.netloc:
        entry["errors"].append("base_url does not parse as http(s)")
    if not config.browse_paths:
        entry["errors"].append("empty browse_paths")
    if not config.detail_signals and not config.social_profile:
        entry["errors"].append("empty detail_signals")
    entry["output"] = audit_jsonl(output_path(config.platform_name), config)
    entry["cache"] = audit_cache(cache_path(config.platform_name), config)
    return entry


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("spiders", nargs="+")
    parser.add_argument("--json-out", default=None)
    args = parser.parse_args()

    paths = [Path(p) if Path(p).is_absolute() else ROOT / p for p in args.spiders]
    reports = [audit_file(path) for path in paths]

    duplicates = defaultdict(list)
    for report in reports:
        if report.get("has_config"):
            duplicates[(report["platform_name"], report["territory"])].append(report["file"])
    for files in duplicates.values():
        if len(files) > 1:
            for report in reports:
                if report["file"] in files:
                    report["errors"].append(f"duplicate platform/territory with {files}")

    summary = Counter()
    for report in reports:
        summary["files"] += 1
        if report.get("has_config"):
            summary["with_config"] += 1
        if report["errors"]:
            summary["config_errors"] += 1
        output = report.get("output") or {}
        cache = report.get("cache") or {}
        if output.get("items", 0) == 0:
            summary["zero_output_items"] += 1
        if output.get("index_fallback_items", 0) or output.get("profile_fallback_items", 0):
            summary["fallback_outputs"] += 1
        if output.get("bad_signal_urls") or cache.get("bad_signal_urls"):
            summary["bad_signal_hits"] += 1
        if output.get("host_mismatches") or cache.get("host_mismatches"):
            summary["host_mismatches"] += 1
        if cache.get("missing_meta"):
            summary["missing_cache_meta"] += 1

    payload = {"summary": dict(summary), "reports": reports}
    if args.json_out:
        out = Path(args.json_out)
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(json.dumps(payload, indent=2, ensure_ascii=False), encoding="utf-8")

    print(json.dumps(payload["summary"], indent=2, ensure_ascii=False))
    for report in reports:
        output = report.get("output") or {}
        cache = report.get("cache") or {}
        flags = []
        if report["errors"]:
            flags.append("CONFIG_ERROR")
        if output.get("items", 0) == 0:
            flags.append("ZERO_ITEMS")
        if output.get("index_fallback_items", 0) or output.get("profile_fallback_items", 0):
            flags.append("FALLBACK_OUTPUT")
        if output.get("bad_signal_urls") or cache.get("bad_signal_urls"):
            flags.append("BAD_SIGNAL")
        if output.get("host_mismatches") or cache.get("host_mismatches"):
            flags.append("HOST_MISMATCH")
        if cache.get("missing_meta"):
            flags.append("MISSING_META")
        if flags:
            print(f"{report['file']}: {', '.join(flags)}")
    return 0


if __name__ == "__main__":
    sys.path.insert(0, str(SRC))
    raise SystemExit(main())

#!/usr/bin/env bash
set -euo pipefail

ARCHIVE="${1:-/home/davidgn/Downloads/apks.tar.xz}"
OUT="${2:-docs/apk_inventory/apks_tar_xz_inventory_2026-05-27.csv}"

mkdir -p "$(dirname "$OUT")"
printf 'size_bytes,mtime_date,mtime_time,filename,extension,disassembled_status,priority_note\n' > "$OUT"

tar -tvf "$ARCHIVE" | while read -r _mode _owner size date time name; do
  extension="${name##*.}"
  lower="$(tr '[:upper:]' '[:lower:]' <<<"$name")"
  note=""
  case "$lower" in
    *bookchor*|*booklane*|*booklal*|*bookmamu*|*bookspie*|*pustak*|*kitabu*|*kongfz*|*孔夫子*|*闲鱼*|*duozhuayu*|*换享*)
      note="book-first or known blocked target candidate"
      ;;
    *jiji*|*bikroy*|*tonaton*|*avito*|*vinted*|*tokopedia*|*mercado*|*olx*|*slando*|*allegro*)
      note="horizontal marketplace app; useful for app-tier endpoint reconnaissance"
      ;;
    *momox*|*medimops*|*rebuy*|*pango*|*nadirkitap*|*wer-zahlt-mehr*)
      note="book/recommerce operator app candidate"
      ;;
    *)
      note="unclassified; inspect before disassembly priority"
      ;;
  esac
  printf '"%s","%s","%s","%s","%s","not_checked","%s"\n' \
    "$size" "$date" "$time" "${name//\"/\"\"}" "$extension" "$note" >> "$OUT"
done

printf 'Wrote %s\n' "$OUT"

#!/usr/bin/env bash
set -u

# Paths
REPO_ROOT="/home/davidgn/active_repos/unipress-parser-crawler-family"
SUPERVISOR="$REPO_ROOT/src/multisite_autonomous_supervisor.py"
PROFILES="$REPO_ROOT/config/press_multisite_profiles_2026-03-15.json"
SLUGS_FILE="test_slugs.txt"
OUTPUT_DIR="calibration_runs_$(date +%Y%m%d_%H%M%S)"

mkdir -p "$OUTPUT_DIR"

# Ensure PYTHONPATH includes the src directory
export PYTHONPATH="$REPO_ROOT/src:${PYTHONPATH:-}"

echo "--- TOP 100 CALIBRATION RUN (Modern Supervisor) ---"
echo "Starting batch calibration for $(wc -l < "$SLUGS_FILE") sites..."
echo "Artifacts will be stored in: $OUTPUT_DIR"
echo "--------------------------------"

while IFS= read -r slug; do
    if [[ -z "$slug" ]]; then continue; fi
    
    # We need the profile name for the supervisor
    # I'll extract it from the profiles.json using the slug
    profile_name=$(grep -B 5 "\"slug\": \"$slug\"" "$PROFILES" | grep "\"site_name\":" | head -n 1 | sed 's/.*"site_name": "\(.*\)".*/\1/')
    
    if [[ -z "$profile_name" ]]; then
        echo "Could not find profile for slug: $slug"
        continue
    fi

    echo -n "Calibrating [$slug] ($profile_name)... "
    
    WORK_DIR="/home/davidgn/calibration_workdirs/${slug}_autonomous"
    mkdir -p "$WORK_DIR/frontier"
    
    # Empty seed file to force frontier builder to run
    SEED_CSV="$WORK_DIR/frontier/${slug}_frontier.csv"
    touch "$SEED_CSV"
    
    LOG_FILE="$OUTPUT_DIR/${slug}.log"
    
    # Run modern supervisor with --once
    timeout 300 python3 "$SUPERVISOR" \
        --site "$profile_name" \
        --profiles-json "$PROFILES" \
        --seed-csv "$SEED_CSV" \
        --work-dir "$WORK_DIR" \
        --max-pages 10 \
        --once \
        --quarantine-mode force > "$LOG_FILE" 2>&1
    
    EXIT_CODE=$?
    
    if [ $EXIT_CODE -eq 0 ]; then
        echo "[SUCCESS]"
    elif [ $EXIT_CODE -eq 124 ]; then
        echo "[TIMEOUT]"
    else
        echo "[FAILED (Code $EXIT_CODE)]"
    fi
    
    sleep 2
    
done < "$SLUGS_FILE"

echo "--------------------------------"
echo "Calibration complete. Summary available in $OUTPUT_DIR"

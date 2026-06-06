#!/usr/bin/env bash

# RBM AI Extraction Batch Job Staging
# Runs once Gemini API quota resets

VENV_PATH="/home/davidgn/active_repos/rbm_crawlers/.venv/bin/python3"
SRC_PATH="/home/davidgn/active_repos/rbm_crawlers/src"

platforms=(
    "Books.com.tw:Taiwan"
    "Kingstone.com.tw:Taiwan"
    "Kaidee:Thailand"
    "Naiin:Thailand"
    "SE-ED:Thailand"
)

echo "--- Starting RBM AI Extraction Batch ---"

for entry in "${platforms[@]}"; do
    platform="${entry%%:*}"
    territory="${entry##*:}"
    
    echo "Processing [$platform] ($territory)..."
    $VENV_PATH "$SRC_PATH/batch_processor.py" --platform "$platform" --territory "$territory"
done

echo "--- Batch AI Extraction Complete ---"

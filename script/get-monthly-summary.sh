#!/bin/bash

set -e

# Check if target month argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <YYYY-MM>"
    echo "Example: $0 2025-10"
    exit 1
fi

TARGET_MONTH=$1

# Validate date format
if ! [[ "$TARGET_MONTH" =~ ^[0-9]{4}-[0-9]{2}$ ]]; then
    echo "Error: Invalid date format. Use YYYY-MM"
    exit 1
fi

# Calculate start and end dates
START_DATE="${TARGET_MONTH}-01"
# Calculate next month for end date
NEXT_MONTH=$(date -j -v+1m -f "%Y-%m-%d" "${START_DATE}" "+%Y-%m-01" 2>/dev/null || date -d "${START_DATE} +1 month" "+%Y-%m-01" 2>/dev/null)

echo "Generating API changelog for ${TARGET_MONTH}"
echo "Period: ${START_DATE} to ${NEXT_MONTH} (exclusive)"
echo ""

# Get all commits in the target month
COMMITS=$(git log --oneline --reverse --after="${START_DATE}" --before="${NEXT_MONTH}" | awk '{print $1}')

if [ -z "$COMMITS" ]; then
    echo "No commits found in the specified period."
    exit 0
fi

# Array to store API schema files to check
declare -a API_SCHEMA_FILES=(
    "v2020_06_15/open-api-3/api-schema.json"
    "hr/open-api-3/api-schema.json"
    "iv/open-api-3/api-schema.yml"
)

# Temporary directory for processing
TEMP_DIR=$(mktemp -d)
trap "rm -rf ${TEMP_DIR}" EXIT

# Function to check if commit has API schema changes
has_api_schema_changes() {
    local commit=$1
    local changed_files=$(git diff-tree --no-commit-id --name-only -r "$commit")

    for schema_file in "${API_SCHEMA_FILES[@]}"; do
        if echo "$changed_files" | grep -q "$schema_file"; then
            return 0
        fi
    done
    return 1
}

# Function to get commit date
get_commit_date() {
    git log -1 --format=%ad --date=short "$1"
}

# Function to run oasdiff for a specific schema
run_oasdiff() {
    local prev_commit=$1
    local curr_commit=$2
    local schema_path=$3
    local api_name=$4

    local result=$(oasdiff changelog \
        "https://raw.githubusercontent.com/freee/freee-api-schema/${prev_commit}/${schema_path}" \
        "https://raw.githubusercontent.com/freee/freee-api-schema/${curr_commit}/${schema_path}" \
        -f text 2>/dev/null || echo "")

    if [ -n "$result" ]; then
        echo "### ${api_name}" >> "${TEMP_DIR}/current_date.md"
        echo "$result" | sed 's/^/- /' >> "${TEMP_DIR}/current_date.md"
        echo "" >> "${TEMP_DIR}/current_date.md"
    fi
}

# Group commits by date and collect which APIs changed
echo "${TEMP_DIR}/commits_by_date.txt" > /dev/null
> "${TEMP_DIR}/commits_by_date.txt"

for commit in $COMMITS; do
    if has_api_schema_changes "$commit"; then
        commit_date=$(get_commit_date "$commit")
        echo "${commit_date}|${commit}" >> "${TEMP_DIR}/commits_by_date.txt"
    fi
done

# Check if any commits found
if [ ! -s "${TEMP_DIR}/commits_by_date.txt" ]; then
    echo "No API schema changes found in the specified period."
    exit 0
fi

# Get unique dates
DATES=$(cat "${TEMP_DIR}/commits_by_date.txt" | cut -d'|' -f1 | sort -u)

# Generate final markdown output
OUTPUT_FILE="release_notes_${TARGET_MONTH}.md"
echo "# API Changes for ${TARGET_MONTH}" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Process each date
prev_date_last_commit=""

for date in $DATES; do
    echo "Processing date: ${date}..."

    # Get all commits for this date
    date_commits=$(grep "^${date}|" "${TEMP_DIR}/commits_by_date.txt" | cut -d'|' -f2)

    # Get last commit of the day
    last_commit=$(echo "$date_commits" | tail -1)

    # Determine the comparison base commit
    if [ -z "$prev_date_last_commit" ]; then
        # For the first date, compare with the commit just before the period
        prev_commit=$(git log --oneline --before="${START_DATE}" -1 | awk '{print $1}')
    else
        # For subsequent dates, compare with the last commit of the previous date
        prev_commit="$prev_date_last_commit"
    fi

    # Collect which APIs changed on this date
    changed_apis=""
    for commit in $date_commits; do
        changed_files=$(git diff-tree --no-commit-id --name-only -r "$commit")

        if echo "$changed_files" | grep -q "v2020_06_15/open-api-3/api-schema.json"; then
            if ! echo "$changed_apis" | grep -q "accounting"; then
                changed_apis="${changed_apis} accounting"
            fi
        fi

        if echo "$changed_files" | grep -q "hr/open-api-3/api-schema.json"; then
            if ! echo "$changed_apis" | grep -q "hr"; then
                changed_apis="${changed_apis} hr"
            fi
        fi

        if echo "$changed_files" | grep -q "iv/open-api-3/api-schema.yml"; then
            if ! echo "$changed_apis" | grep -q "invoice"; then
                changed_apis="${changed_apis} invoice"
            fi
        fi
    done

    # Run oasdiff for each changed API (comparing prev to last commit of the day)
    rm -f "${TEMP_DIR}/current_date.md"

    if echo "$changed_apis" | grep -q "accounting"; then
        run_oasdiff "$prev_commit" "$last_commit" "v2020_06_15/open-api-3/api-schema.json" "Accounting API"
    fi

    if echo "$changed_apis" | grep -q "hr"; then
        run_oasdiff "$prev_commit" "$last_commit" "hr/open-api-3/api-schema.json" "HR API"
    fi

    if echo "$changed_apis" | grep -q "invoice"; then
        run_oasdiff "$prev_commit" "$last_commit" "iv/open-api-3/api-schema.yml" "Invoice API"
    fi

    # Add date section to output if there are changes
    if [ -f "${TEMP_DIR}/current_date.md" ]; then
        echo "## ${date}" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        cat "${TEMP_DIR}/current_date.md" >> "$OUTPUT_FILE"
    fi

    # Remember this date's last commit for the next iteration
    prev_date_last_commit="$last_commit"
done

echo ""
echo "Release notes generated: ${OUTPUT_FILE}"

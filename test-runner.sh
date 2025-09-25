#!/bin/bash

set -e

GREEN="\033[0;32m"
RED="\033[0;31m"
RESET="\033[0m"

echo
echo "Running all Scheme tests..."

total_tests=0
total_passed=0
total_failed=0

for project in */; do
    test_dirs=$(find "$project" -type d -name "tests")
    for test_dir in $test_dirs; do
        for test_file in "$test_dir"/*.scm; do
            if [ -f "$test_file" ]; then
                output=$(mit-scheme --batch-mode --load "$test_file" 2>&1)

                if echo "$output" | grep -q "Assertion failed"; then
                    echo "$output"
                fi

                passed=$(echo "$output" | grep "Passed:" | awk '{print $2}')
                failed=$(echo "$output" | grep "Failed:" | awk '{print $2}')
                count=$(echo "$output" | grep "Total tests:" | awk '{print $3}')

                total_tests=$((total_tests + count))
                total_passed=$((total_passed + passed))
                total_failed=$((total_failed + failed))
            fi
        done
    done
done

echo
echo "=============================="
echo -e "Total Passed: ${GREEN}${total_passed}${RESET}"
echo -e "Total Failed: ${RED}${total_failed}${RESET}"
echo -e "Total Tests:  ${total_tests}"
echo "=============================="

if [ "$total_failed" -gt 0 ]; then
    exit 1
else
    exit 0
fi
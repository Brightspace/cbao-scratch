#!/usr/bin/env bash

cat "${GITHUB_WORKSPACE}/plan.txt" | sed --silent '/=========/,$p'
PLAN_JSON=$(cat "${GITHUB_WORKSPACE}/plan.json" | tee "${GITHUB_WORKSPACE}/plan2.json")
echo "::set-output name=plan_json::${PLAN_JSON}"

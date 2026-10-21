#!/usr/bin/env bash
set -euo pipefail

# Verify the requested runtimes.
python3 --version
node --version
R --version | head -n 1
pdflatex --version | head -n 1 || true

# Stata is commercial software and must be installed from a licensed source.
if command -v stata-mp >/dev/null 2>&1; then
  stata-mp -q -b do /dev/null || true
elif command -v stata >/dev/null 2>&1; then
  stata -q -b do /dev/null || true
else
  echo "Stata not found: install it from your licensed distribution and set STATA_PATH."
fi

# Keep the shared skills in the repository so cloud sessions do not redownload them.
if [ -d "skills" ]; then
  echo "Shared skills available: $(find skills -mindepth 2 -name SKILL.md | wc -l | tr -d ' ')"
fi

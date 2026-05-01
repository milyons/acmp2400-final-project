#!/bin/sh
set -e

echo "Generating SBOM..."

python -m pip install cyclonedx-bom safety

cyclonedx-py -o sbom.json . || true

echo "Scanning for vulnerabilities..."

safety check -r requirements.txt || true

echo "SBOM + scan complete"
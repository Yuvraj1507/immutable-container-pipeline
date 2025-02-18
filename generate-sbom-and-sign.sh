
#!/bin/bash

# Generate SBOM with Syft
syft . -o json > sbom.json

# Sign the container image with Cosign
cosign sign --key cosign.key ghcr.io/your-repo/minimalist-container:latest

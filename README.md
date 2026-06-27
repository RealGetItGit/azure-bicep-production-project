# azure-bicep-production-project
Azure Production Infrastructure using Bicep

This repository documents my journey of learning Infrastructure as Code using Azure Bicep.

# Azure Bicep DevOps Portfolio

End-to-end Azure infrastructure deployment using modular Bicep templates,
built while transitioning from Microsoft 365/Exchange administration into
Azure DevOps engineering.

## What this project deploys
- Virtual Network
- Network Security Groups
- Storage Account
- Windows Virtual Machines
- Azure Bastion
- Internal Load Balancer
- Virtual Network Peering
- Private Endpoints
- Azure Private DNS

## Why Bicep
Coming from 10 years of Azure administration, this project was built to
move from manual, click-ops infrastructure management to fully automated,
version-controlled Infrastructure as Code — the foundation for CI/CD
pipelines in Azure DevOps.

## Architecture
See `docs/architecture.md` for the full diagram and design decisions.

## How to deploy
\`\`\`bash
az deployment group create \
  --resource-group <your-rg> \
  --template-file main.bicep \
  --parameters parameters/main.parameters.json
\`\`\`

## What I learned
See `docs/learnings.md` for challenges faced and how I solved them.

## Current Status

🚧 Project initialization

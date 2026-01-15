#!/bin/bash

set -e

echo "🚀 Initializing DevOps Open Source Repository Structure..."

# Root-level files
touch README.md CONTRIBUTING.md CODE_OF_CONDUCT.md LICENSE

# GitHub configs
mkdir -p .github/{workflows,ISSUE_TEMPLATE}
touch .github/workflows/ci.yml
touch .github/ISSUE_TEMPLATE/{bug_report.md,feature_request.md,good_first_issue.md}
touch .github/PULL_REQUEST_TEMPLATE.md

# Roadmap
mkdir -p roadmap
touch roadmap/devops-roadmap.md

# Level 0 - Linux
mkdir -p level-0-linux/{concepts,tasks,solutions}
touch level-0-linux/README.md

# Level 1 - Shell Scripting
mkdir -p level-1-shell-scripting/{basics,projects,solutions}
touch level-1-shell-scripting/README.md

# Level 2 - Git & GitHub
mkdir -p level-2-git-github/{git-basics,github-workflows,tasks}
touch level-2-git-github/README.md

# Level 3 - Docker
mkdir -p level-3-docker/{docker-basics,dockerfiles,mini-projects,solutions}
touch level-3-docker/README.md

# Level 4 - Kubernetes
mkdir -p level-4-kubernetes/{k8s-basics,manifests,labs,solutions}
touch level-4-kubernetes/README.md

# Level 5 - CI/CD
mkdir -p level-5-ci-cd/{github-actions,jenkins,pipelines}
touch level-5-ci-cd/README.md

# Level 6 - Cloud (AWS)
mkdir -p level-6-cloud-aws/{aws-basics,ec2,iam,s3,projects}
touch level-6-cloud-aws/README.md

# Challenges
mkdir -p challenges/{30-days-of-devops,weekly-challenges}

# Resources
mkdir -p resources
touch resources/{interview-questions.md,cheatsheets.md,recommended-tools.md}

echo "✅ Repository structure created successfully."


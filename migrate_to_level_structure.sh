#!/bin/bash

set -e

echo "🚚 Migrating existing content to level-based structure..."

# Ensure level folders exist
mkdir -p level-0-linux/{concepts,tasks,solutions}
mkdir -p level-1-shell-scripting/{basics,projects,solutions}
mkdir -p level-3-docker/docker-basics
mkdir -p level-4-kubernetes/k8s-basics
mkdir -p level-5-ci-cd/github-actions
mkdir -p level-6-cloud-aws
mkdir -p resources

# Move Linux basics
if [ -d "linux" ]; then
  echo "➡️  Moving linux → level-0-linux/concepts"
  mv linux/* level-0-linux/concepts/ || true
  rmdir linux || true
fi

# Move Linux CLI projects
if [ -d "linux-cli-projects" ]; then
  echo "➡️  Moving linux-cli-projects → level-0-linux/tasks"
  mv linux-cli-projects/* level-0-linux/tasks/ || true
  rmdir linux-cli-projects || true
fi

# Move Shell scripting
if [ -d "shell-scripting" ]; then
  echo "➡️  Moving shell-scripting → level-1-shell-scripting"
  mv shell-scripting/* level-1-shell-scripting/basics/ || true
  rmdir shell-scripting || true
fi

# Move Docker basics
if [ -d "docker/basics" ]; then
  echo "➡️  Moving docker/basics → level-3-docker/docker-basics"
  mv docker/basics/* level-3-docker/docker-basics/ || true
fi
rmdir docker/basics 2>/dev/null || true
rmdir docker 2>/dev/null || true

# Move Kubernetes basics
if [ -d "kubernetes/basics" ]; then
  echo "➡️  Moving kubernetes/basics → level-4-kubernetes/k8s-basics"
  mv kubernetes/basics/* level-4-kubernetes/k8s-basics/ || true
fi
rmdir


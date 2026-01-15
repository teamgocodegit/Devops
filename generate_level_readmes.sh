#!/bin/bash

set -e

create_readme () {
  LEVEL_NAME=$1
  LEVEL_DESC=$2
  DIR=$3

  cat <<EOF > $DIR/README.md
# $LEVEL_NAME

## 📌 Objective
$LEVEL_DESC

---

## 🧠 What You Will Learn
- Core concepts related to this level
- Hands-on practical skills
- Real-world DevOps use cases

---

## 📂 Folder Structure
- \`concepts/\` or \`basics/\` → Theory and explanations
- \`tasks/\` or \`projects/\` → Hands-on exercises
- \`solutions/\` → Reference implementations (optional)

---

## ✅ Prerequisites
- Basic Linux knowledge
- Willingness to practice (not just read)

---

## 🧪 How to Use This Level
1. Read the concepts
2. Complete the tasks
3. Try projects without looking at solutions
4. Compare with solutions only after attempting

---

## 🤝 Contribution Guidelines
You can contribute by:
- Adding tasks
- Improving explanations
- Fixing mistakes
- Adding real-world examples

Follow the main \`CONTRIBUTING.md\` rules.

---

## 🚀 Progression
Complete this level before moving to the next one in the roadmap.

Happy Learning & Building 🛠️
EOF
}

create_readme "Level 0: Linux Foundations" \
"Learn essential Linux concepts required for DevOps, including filesystems, processes, networking, and permissions." \
"level-0-linux"

create_readme "Level 1: Shell Scripting" \
"Learn how to automate tasks using Bash shell scripting with real-world DevOps examples." \
"level-1-shell-scripting"

create_readme "Level 2: Git & GitHub" \
"Understand version control, collaboration workflows, and open-source contribution using Git and GitHub." \
"level-2-git-github"

create_readme "Level 3: Docker" \
"Learn containerization fundamentals, Dockerfiles, images, containers, and mini-projects." \
"level-3-docker"

create_readme "Level 4: Kubernetes" \
"Understand Kubernetes architecture, deployments, services, and hands-on labs." \
"level-4-kubernetes"

create_readme "Level 5: CI/CD" \
"Learn Continuous Integration and Continuous Deployment using GitHub Actions and Jenkins." \
"level-5-ci-cd"

create_readme "Level 6: Cloud (AWS)" \
"Learn AWS cloud fundamentals and how DevOps tools integrate with cloud infrastructure." \
"level-6-cloud-aws"

echo "✅ README templates generated for all levels."


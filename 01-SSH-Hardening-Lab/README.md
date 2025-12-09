# 🎯 SSH Hardening Lab (Linux Security Basics)

A practical lab to learn Linux security hardening focused on SSH. Students will harden SSH settings, implement logging, and verify improvements.

## Overview
- Learn best practices for SSH on Linux (Ubuntu)
- Disable root login, enforce key-based authentication
- Enable basic logging and fail2ban
- Simple lab guide to run on local VMs or containers

## Tech Stack
- Linux (Ubuntu, any recent LTS)
- Bash
- Optional: Ansible (playbooks/setup_hardening.yml)

## Prerequisites
- A Linux environment (VM or container) with sudo access
- Git
- Optional: Ansible installed (for the playbook)
- GoHackersCloud labs guide access (for lab steps)

## Quick Start (Run Locally)
- Clone the lab repo (or copy this structure)
- Ensure SSH is installed:  
  `sudo apt-get update && sudo apt-get install -y openssh-server`
- Run the hardening script:  
  `bash scripts/ssh_hardening.sh`
- If using Ansible, run:  
  `ansible-playbook playbooks/setup_hardening.yml -i inventory/hosts`

## Lab Learning Goals
- Configure SSH for key-based authentication
- Disable password authentication and root login
- Update SSH cipher and login attempt protections
- Basic log review: /var/log/auth.log
- Optional: enable fail2ban

## Starter Code Structure
- scripts/ssh_hardening.sh
- playbooks/setup_hardening.yml (optional)
- labs/README.md
- README.md (this file)

## What to Submit
- A short lab write-up describing changes made
- Before/after SSH config snippets
- Screenshots or logs showing login attempts and login success/failure

## Validation Tips
- Verify SSH config changes in /etc/ssh/sshd_config
- Ensure SSH service restarts: `sudo systemctl restart ssh`
- Confirm root login is disabled: `grep PermitRootLogin /etc/ssh/sshd_config`
- Verify key-based login works; password login should be disabled

## Starter Code (snippet)
```bash  
#!/bin/bash  
set -euo pipefail  

SSH_CONFIG="/etc/ssh/sshd_config"  

# 1) Disable root login  
sudo sed -i 's/^#?PermitRootLogin.*/PermitRootLogin no/' "$SSH_CONFIG"  

# 2) Disable password authentication  
sudo sed -i 's/^#?PasswordAuthentication.*/PasswordAuthentication no/' "$SSH_CONFIG"  

# 3) Enforce key-based auth (ensure PubkeyAuthentication is yes)  
sudo sed -i 's/^#?PubkeyAuthentication.*/PubkeyAuthentication yes/' "$SSH_CONFIG"  

# 4) Restart SSH  
sudo systemctl restart ssh  
echo "SSH hardening applied. Please test login with a key."  

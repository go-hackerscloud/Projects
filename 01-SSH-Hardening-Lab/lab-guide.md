# SSH Hardening Lab – Guide

Objectives:
- Harden SSH configuration on a Linux host
- Verify that root login is disabled and password login is off
- Review logs for login attempts

Steps:
1. Prepare a fresh Ubuntu VM or container
2. Ensure SSH is installed
3. Run the starter script
4. Attempt both password and key-based login (from a separate machine or container)
5. Review /var/log/auth.log for attempts

Deliverables:
- SSH config before/after snippets
- Screenshots of login attempts
- A short write-up of changes and rationale

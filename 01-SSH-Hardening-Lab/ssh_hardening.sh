2) Starter Code Files
- scripts/ssh_hardening.sh
```bash  
#!/bin/bash  
set -euo pipefail  

SSH_CONFIG="/etc/ssh/sshd_config"  

echo "Applying SSH hardening..."  
# 1) Disable root login  
sudo sed -i 's/^#?PermitRootLogin.*/PermitRootLogin no/' "$SSH_CONFIG"  

# 2) Disable password authentication  
sudo sed -i 's/^#?PasswordAuthentication.*/PasswordAuthentication no/' "$SSH_CONFIG"  

# 3) Enforce key-based auth (ensure PubkeyAuthentication is yes)  
sudo sed -i 's/^#?PubkeyAuthentication.*/PubkeyAuthentication yes/' "$SSH_CONFIG"  

# 4) Restart SSH  
sudo systemctl restart ssh  
echo "SSH hardening applied. Please test login with a key."  

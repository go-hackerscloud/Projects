# 🎯 AWS 2-Tier Web App Deployment (Free Tier)  

Hands-on deployment of a simple 2-tier web app on AWS using a free-tier configuration. IaC with Terraform or CloudFormation.  

## Overview  
- Learn cloud fundamentals: VPC, subnets, security groups  
- Deploy a 2-tier app: Web (EC2) + DB (RDS) with minimal cost  
- Optional: CI integration for automated deploys  

## Tech Stack  
- AWS (Free Tier)  
- Terraform or AWS CloudFormation  
- Flask (Python) or Node.js app  
- S3 static hosting (optional)  

## Prerequisites  
- AWS account with free tier  
- Terraform installed (if you choose Terraform)  
- AWS CLI configured (aws configure)  
- Basic knowledge of networking  

## Quick Start (Terraform)  
1) Clone repo  
2) Initialize: `cd infrastructure && terraform init`  
3) Plan: `terraform plan`  
4) Apply: `terraform apply`  

Tip: Use Terraform variable files for environment separation (dev/prod) and ensure clean teardown with `terraform destroy`  

## Lab Learning Goals  
- Create VPCs, subnets, and security groups  
- Launch EC2 instance for app  
- Provision RDS (free tier) with proper security  
- Connect app to DB and test endpoints  
- Clean up resources to minimize costs  

## Starter Code Structure  
- infrastructure/terraform/main.tf  
- infrastructure/terraform/variables.tf  
- app/  
  - app.py (Flask) or index.js (Node.js)  
- README.md (project overview)  

## What to Submit  
- Terraform plan/app deployment evidence  
- Screenshots of endpoints  
- Clean-up commands and costs  

## Starter App (Flask snippet)  
```python
# app/app.py
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome to GoHackersCloud AWS 2-Tier Lab!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)

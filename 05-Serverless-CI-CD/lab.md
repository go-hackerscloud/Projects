# 🎯 Serverless Website with CI/CD Pipeline

A minimal serverless project with a front-end or API and a GitHub Actions-based CI/CD deploy.

## Overview
- Learn serverless concepts (functions, events)
- Deploy to AWS Lambda, Netlify, or Vercel
- Implement a simple CI/CD pipeline triggering on push

## Tech Stack
- Node.js or Python
- AWS Lambda or Netlify/Vercel
- GitHub Actions

## Prerequisites
- Node.js or Python installed
- AWS account (if using Lambda) or Netlify/Vercel account
- GitHub repository with GoHackersCloud branding

## Quick Start (Serverless + GitHub Actions)
1) Create a simple API or website under src/
2) Add a basic function in functions/
3) Create a GitHub Actions workflow at .github/workflows/deploy.yml
4) Push to GitHub; the workflow should deploy automatically

## Starter Code Structure
- src/ (static site or API)
- functions/ (serverless functions)
- .github/workflows/deploy.yml
- README.md

## Starter Code (serverless function)
```javascript  
// functions/hello.js (Node.js AWS Lambda example)  
exports.handler = async (event) => {  
  return {  
    statusCode: 200,  
    body: JSON.stringify({ message: "Hello from GoHackersCloud Serverless!" }),  
  };  
};  

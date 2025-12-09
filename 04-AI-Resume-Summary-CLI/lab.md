# 🎯 AI-Powered Resume Summary Generator (CLI)

A command-line tool to generate concise resume summaries using AI APIs or a local fallback.

## Overview
- Learn API usage (OpenAI or local model)
- Generate tailored resume summaries for target roles
- Handle API keys securely and provide a local fallback

## Tech Stack
- Python 3.x
- OpenAI API (or local LLM fallback)
- argparse
- Optional: dotenv for environment variables

## Prerequisites
- Python 3.x
- OpenAI API key or local model setup
- virtualenv (optional)

## Quick Start
1) Install dependencies: `pip install -r requirements.txt`
2) Set API key: export OPENAI_API_KEY="..." or use .env
3) Run: `python main.py --resume path/to/resume.txt --role "SOC Analyst"`

## Lab Learning Goals
- Understand prompt design
- Integrate AI API into a CLI tool
- Consider privacy and data handling
- Provide fallback mechanisms when API isn’t available

## Starter Code Structure
- main.py
- prompts/
- requirements.txt
- samples/
- README.md

## Starter Code (main.py)
```python  
#!/usr/bin/env python3  
import argparse  
import os  
try:  
    import openai  
except ImportError:  
    openai = None  

def generate_summary(text, role, api_key=None):  
    if openai and api_key:  
        openai.api_key = api_key  
        prompt = f"Create a compelling resume summary for a {role} from the following:\n{text}"  
        resp = openai.ChatCompletion.create(model="gpt-3.5-turbo", messages=[{"role":"user","content":prompt}])  
        return resp.choices[0].message["content"].strip()  
    else:  
        # Simple rule-based fallback  
        return f"{role} candidate with relevant experience: {text[:200]}..."  

def main():  
    parser = argparse.ArgumentParser()  
    parser.add_argument("--resume", required=True, help="Path to resume text")  
    parser.add_argument("--role", required=True, help="Target role")  
    parser.add_argument("--api_key", default=None, help="OpenAI API key (optional)")  
    args = parser.parse_args()  

    with open(args.resume, "r") as f:  
        resume_text = f.read()  

    summary = generate_summary(resume_text, args.role, args.api_key)  
    print("Generated Summary:\n", summary)  

if __name__ == "__main__":  
    main()  

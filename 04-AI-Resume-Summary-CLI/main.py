Starter Code Files
- prompts/ (empty for now; you can add templates)
- main.py
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
        prompt = f"Create a concise resume summary for a {role} based on the following:\n{text}"  
        resp = openai.ChatCompletion.create(model="gpt-3.5-turbo", messages=[{"role":"user","content":prompt}])  
        return resp.choices[0].message["content"].strip()  
    else:  
        # Local fallback: simple heuristic  
        snippet = (text[:200] + "...") if len(text) > 200 else text  
        return f"{role} professional with experience: {snippet}"  

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

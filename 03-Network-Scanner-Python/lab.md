# 🎯 Local Network Scanner (Python)

A simple, safe network scanner to learn fundamentals of network discovery, using Python.

## Overview
- Learn IP ranges, ports, and basic scanning logic
- Produce structured reports (CSV/JSON)
- Emphasize ethical and legal use

## Tech Stack
- Python 3.x
- python-nmap (or subprocess with nmap)
- argparse
- CSV/JSON reporting

## Prerequisites
- Python 3.x
- Nmap installed (optional; python-nmap wrapper is used if available)

## Quick Start
1) Install dependencies: `pip install -r requirements.txt`
2) Run scan: `python scanner.py --target 192.168.1.0/24 --ports 20-1024 --output results.json`
3) View results in results.json or results.csv

## Lab Learning Goals
- Understand IP ranges and port scanning concepts
- Write structured output for automation
- Respect network security boundaries and obtain permission

## Starter Code Structure
- scanner.py
- requirements.txt
- reports/ (results.csv, results.json)
- labs/README.md

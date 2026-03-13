# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Microservice system the **Pricer**. System consists next microservices: 
- Pricer parser
- Pricer telegram bot

## Architecture

### File structure

```
/
├── doc/                      # Documentation
│   └── [materials]           # Materials and documentation
│
├── postgres/                 # Database 
│   ├── Dockerfile            # Dockerfile for database container
│   ├── init.sql              # Initialization scripts
│   └── [migrations]          # Database migrations
│
├── [pricer-parser-service]   # Parcer microservice
│
└── [pricer-tgbot]            # Telegram bot microservice
```

### Edit restriction

It's strictly forbidden to edit any files in the directories:
- `/pricer-parser-service/*`
- `/pricer-tgbot/*`
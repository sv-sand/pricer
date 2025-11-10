# Pricer system

Microservice system for parsing prices of marketplaces.

System requirements:
- Java 17
- Git
- Docker compose
- Maven

## How to run

1. Install all required applications
2. Register new Telegram bot
3. Set environment variables:
```bash
export DB_HOST=pricer-db
export DB_USER=postgres
export DB_PASSWORD=postgres
export TGBOT_PRICER_TOKEN=your_token
```
4. Clone repository
```bash
cd /opt
git clone --recurse-submodules https://github.com/sv-sand/pricer.git
```
5. Build all services and run it into docker-compose:
```bash
sh ./build.sh
```
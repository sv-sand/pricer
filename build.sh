# Update system
git pull --recurse-submodules

# Build microservices into their directories
mvn -f pricer-parser-service clean package -DskipTests
mvn -f pricer-tgbot clean package -DskipTests

# Deploy to docker container
export COMPOSE_PROJECT_NAME=pricer
docker compose up -d --build
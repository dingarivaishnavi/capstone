docker build -t capstone .
docker-compose down || true
docker-compose up -d

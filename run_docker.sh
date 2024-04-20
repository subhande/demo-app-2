docker rm --force demo-app-2
docker build -t demo-app-2 .
# docker run -d --name demo-app-2 --network="host" -p 4000:4000 demo-app-2
# docker run -d --name demo-app-2 -p 4000:4000 demo-app-2
docker run -d --name demo-app-2 -p 4000:4000 --net app-network demo-app-2

docker login
docker tag hello-world-go sir79/hello-world-go
docker push sir79/hello-world-go

docker pull YOUR_USERNAME/hello-world-go

docker tag hello-world-go YOUR_USERNAME/hello-world-go:v1.0.0
docker push YOUR_USERNAME/hello-world-go:v1.0.0


docker tag myapp username/myapp:v1.0.0
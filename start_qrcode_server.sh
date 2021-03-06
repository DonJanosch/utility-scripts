docker rm -f $(docker ps -a -q)
docker rmi $(docker images -q)
git clone https://github.com/DonJanosch/flask-qrgenerator.git app
cd app
docker build -t flask-qrgenerator:latest .
docker run -d -p 80:8080 --restart always --name qrgenerator flask-qrgenerator
echo "All Done, Container is up and running"

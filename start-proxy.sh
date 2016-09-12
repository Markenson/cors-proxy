#/bin/sh
docker rm -f cors-proxy
docker rm -f swagger-ui 

HOST_PROXY="http://myserver"
SWAGGER_FILE="http://my.server:50100/mysystem/api/v1/swagger.json"

docker run -d --name cors-proxy  -p 50100:3000 -e API_SERVER_HOST=$HOST_PROXY markenson:cors-proxy
docker run -d --name swagger-ui -e API_URL=$SWAGGER_FILE -p 50101:80 schickling/swagger-ui



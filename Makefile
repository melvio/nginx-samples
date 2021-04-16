
reload_nginx:
	sudo nginx -s reload

start_webservers:
	. ./shell/start_webservers.sh


DOCKER_CMD=docker build . --tag=python-http-server$${PORT} --build-arg PORT && docker run --publish $${PORT}:$${PORT} --detach python-http-server$${PORT}:latest
start_httpserver2222:
	export PORT=2222; ${DOCKER_CMD} ;

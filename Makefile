
reload_nginx:
	sudo nginx -s reload

start_webservers:
	. ./shell/start_webservers.sh

start_httpserver2222:
	export PORT=2222 ; docker build . --tag=python-http-server"${PORT}" --build-arg PORT && docker run -p 2222:2222 python-http-server2222:latest


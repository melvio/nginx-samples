
reload_nginx:
	sudo nginx -s reload

start_webservers:
	. ./shell/start_webservers.sh

start_httpserver2222:
	docker build . --tag=python-http-server2222 && docker run -p 2222:2222 python-http-server2222:latest


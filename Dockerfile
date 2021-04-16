FROM python:3

ADD ./html/2222/ 2222/

EXPOSE 2222

RUN ["python3",  "-m", "http.server", "2222", "--directory", "2222/"]

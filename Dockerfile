FROM python:3

ARG PORT
ENV PORT=${PORT}
ADD ./html/"${PORT}"/ "${PORT}"/

EXPOSE "${PORT}":"${PORT}"

ENTRYPOINT python3  -m http.server ${PORT} --directory ${PORT}/

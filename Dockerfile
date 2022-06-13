FROM python:3.8-slim

RUN apt-get update && apt-get install -y --no-install-recommends curl

RUN pip install mkdocs
RUN sed -i '/^CipherString/d' /etc/ssl/openssl.cnf

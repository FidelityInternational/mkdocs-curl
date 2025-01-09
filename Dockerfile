FROM python:3.13-slim

RUN apt-get update && apt-get install -y --no-install-recommends curl

RUN pip install mkdocs pymdown-extensions mdx_truly_sane_lists
RUN sed -i '/^CipherString/d' /etc/ssl/openssl.cnf

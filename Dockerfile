FROM python:2.7-slim

RUN apt-get update && apt-get install -y --no-install-recommends curl

RUN pip install mkdocs

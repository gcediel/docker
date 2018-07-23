FROM python:latest
MAINTAINER gcediel
RUN pip install redis && pip install mockredispy
ADD src/ /src/
WORKDIR /src/
ENTRYPOINT python3 -m unittest

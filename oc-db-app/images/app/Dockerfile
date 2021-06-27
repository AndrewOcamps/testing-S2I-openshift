FROM registry.access.redhat.com/rhscl/python-36-rhel7
MAINTAINER Gerardo Ocampos <gerardoob97@hotmail.com>

LABEL description="this is a simple application that connects to mongodb. 2021"

ENV MONGO_DB=""
ENV MONGO_USER=""
ENV MONGO_PASS=""
ENV MONGO_HOST=""

COPY app.py /opt/app/
COPY requirements.txt /opt/app/

WORKDIR /opt/app/

RUN pip install -r requirements.txt

CMD ["python", "app.py"]

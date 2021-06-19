FROM registry.access.redhat.com/rhscl/python-36-rhel7

MAINTAINER Gerardo Ocampos <gerardoob97@hotmail.com>

COPY app.py /app/
COPY requirements.txt /app/

WORKDIR /app/

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"] 

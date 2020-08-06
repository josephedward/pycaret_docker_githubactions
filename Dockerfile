FROM python:3.7-slim

WORKDIR /app

ADD . /app

RUN apt-get update && apt-get install -y libgomp1

ENTRYPOINT ["python"]

CMD ["/app/app.py"]
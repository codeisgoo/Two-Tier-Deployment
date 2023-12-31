FROM python:3.9-slim
WORKDIR /app
RUN apt-get update -y \
   && apt-get upgrade -y \
   && apt-get install gcc default-libmysqlclient-dev pkg-config -y

COPY requirements.txt .

RUN pip install mysqlclient

RUN pip install -r requirements.txt 

COPY . .

CMD ["python","app.py"]


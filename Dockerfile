FROM quay.io/rycole/python:3.11-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
run pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

FROM python:3

WORKDIR /usr/src/app
COPY . .
COPY requirements.txt ./
RUN apt-get update && \
    apt-get install net-tools
RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8000/tcp

CMD ["python", "/usr/src/app/manage.py", "runserver", "0.0.0.0:8000"]

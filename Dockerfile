FROM python:3.10
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y libgl1 && rm -rf /var/lib/apt/lists/*
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python3", "app.py"]
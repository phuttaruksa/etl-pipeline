FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

#ให้รับคำสั่ง
CMD ["sh", "-c", "python3 etl.py && python3 test_etl.py"]

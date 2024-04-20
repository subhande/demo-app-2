
FROM python:3.12-slim
EXPOSE 4000
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "4000", "--workers", "1"]


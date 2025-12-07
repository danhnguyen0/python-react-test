FROM python:3.11-slim
WORKDIR /app
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY backend/main.py .
COPY backend/test_app.py .
EXPOSE 8000
CMD ["python", "main.py"]
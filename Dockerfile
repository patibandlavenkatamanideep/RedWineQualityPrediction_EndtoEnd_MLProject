FROM python:3.8-slim

WORKDIR /app

# Copy only requirements first (best practice)
COPY requirements.txt .

RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copy rest of the application
COPY . .

CMD ["python", "app.py"]

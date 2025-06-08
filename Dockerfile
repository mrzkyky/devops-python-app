# Gunakan Base image Pyhton 
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Salin file dependensi dan install
COPY app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Salin selurung aplikasi
COPY app/ .
 
# Jalankan FastAPI menggunakan Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

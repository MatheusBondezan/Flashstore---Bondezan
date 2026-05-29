FROM python:3.11-slim as builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --target=/app/packages -r requirements.txt

FROM python:3.11-slim-bookworm

RUN useradd -m flashuser
USER flashuser

WORKDIR /app

COPY --from=builder /app/packages /home/flashuser/.local/lib/python3.11/site-packages
COPY . .

ENV PYTHONPATH=/home/flashuser/.local/lib/python3.11/site-packages
ENV PATH=/home/flashuser/.local/bin:$PATH

EXPOSE 8000

CMD ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
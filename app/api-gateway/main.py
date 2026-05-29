from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"service": "Serviço de API Gateway", "status": "Online", "version": "1.0.0"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}
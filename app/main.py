from fastapi import FastAPI
import socket

app = FastAPI()

@app.get("/health")
def health_check():
    return {"statu": "ok"}

@app.get("/info")
def app_info():
    return {
        "app": "DevOps Demo",
        "host": socket.gethostname()
    }


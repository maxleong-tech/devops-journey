from datetime import datetime, timezone

from fastapi import FastAPI

app = FastAPI(title="DevOps Journey API")

APP_NAME = "devops-journey-api"
APP_VERSION = "1.0.0"


@app.get("/")
def home():
    return {
        "message": "Hello from my DevOps API",
        "app": APP_NAME,
        "version": APP_VERSION,
    }


@app.get("/health")
def health():
    return {
        "status": "healthy",
        "app": APP_NAME,
        "version": APP_VERSION,
        "timestamp": datetime.now(timezone.utc).isoformat(),
    }

from fastapi import FastAPI

app = FastAPI(title="DevOps Journey API")

@app.get("/")
def home():
    return {"message": "Hello from my DevOps API"}

@app.get("/health")
def health():
    return {"status": "healthy"}

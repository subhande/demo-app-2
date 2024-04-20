# FASTAPI

from fastapi import FastAPI
from dotenv import load_dotenv
import requests, json, os
load_dotenv()

APP_2_URL = os.getenv("APP_2_URL")


app = FastAPI()


@app.get("/")
async def root():
    return {"status": "ok"}

@app.get("/connection/test")
async def test_connection():
    return {"message": "Hello from App 2"}


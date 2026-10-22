from flask import Flask
import os

app = Flask(__name__)


@app.route("/")
def home():
    return {
        "message": "Hello from the Compose application!",
        "environment": os.getenv("APP_ENV", "not-set")
    }


@app.route("/health")
def health():
    return {
        "status": "healthy"
    }


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "GoHackersCloud AWS 2-Tier Lab - Running on EC2"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)

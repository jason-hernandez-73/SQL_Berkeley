from flask import Flask


# Create an app
app = Flask(__name__)

# Define static routes
@app.route("/")
def index():
    return "Hello, world!"

@app.route("/about")
def about():
    name = "Jason Hernandez"
    location = "Cambium"

    return f"My name is {name}, and I live at {location}."

@app.route("/contact")
def contact():
    email="jason.p.hernandez73@gmail.com"

    return f"Questions? Comments? Shoot an email to {email}."

# Define main behavior
if __name__ == "__main__":
    app.run(debug=True)
    
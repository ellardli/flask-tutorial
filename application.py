from flask import Flask
import yaml

configs = yaml.load(open('configs/app.yml', 'r'))
application_header_text = configs['application']['header_text']

application = Flask(__name__)

@application.route("/")
def hello():
    return "<h1 style='color:blue'>Hello {application_header_text}!</h1>".format(application_header_text=application_header_text)

if __name__ == "__main__":
    application.run(host='0.0.0.0')

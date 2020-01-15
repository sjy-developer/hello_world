from flask import Flask

app = Flask(__name__)
#import logging
#LOG = logging.getLogger(__name__)

@app.route('/')
def ping():
    return 'Hello World ya!'

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5555)



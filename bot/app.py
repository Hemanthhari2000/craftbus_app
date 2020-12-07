from flask import Flask, request, jsonify
from main import get_bot_res


app = Flask(__name__)

def get_bot(query):
    return get_bot_res(query)

@app.route('/api')
def hello():
    d = {}
    d['query'] = str(request.args['query'])
    return jsonify(d)

@app.route("/bot", methods=["POST"])
def response():
    query = dict(request.form)['query']
    print(request.form)
    print(type(query))
    chatbot_res = get_bot(query)
    # Response is what the bot gives
    res = query + " " + "I am your Bot"
    print(chatbot_res)
    return jsonify({"response" : chatbot_res})

if __name__ == '__main__':
    app.run(threaded=False)
    
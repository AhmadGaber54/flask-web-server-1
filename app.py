from flask import Flask
app = Flask(__name__)

print('test 1')
print('__name__ is')
print('test 2')

@app.route('/')
def hello():
    return "Hello from Flask !"

print('test 3')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

print('test 4')    
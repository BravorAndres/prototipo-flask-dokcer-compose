from flask import Flask

# Crea una instancia de la aplicación Flask
app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello_world():
    return 'Hello, World! ahora digamos otra cosa mas bien no te parece?'

if __name__ == '__main__':
    # Ejecuta la aplicación en el puerto 5000 (por defecto)
    app.run()
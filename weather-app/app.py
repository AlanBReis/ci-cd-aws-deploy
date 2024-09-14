from flask import Flask, render_template, request
import requests
import os
from dotenv import load_dotenv

app = Flask(__name__)

# Carregar a chave da API a partir do arquivo .env
load_dotenv()  # Carrega as variáveis de ambiente do arquivo .env
API_KEY = os.getenv('WEATHER_API_KEY')
API_URL = "http://api.openweathermap.org/data/2.5/weather"

@app.route('/', methods=['GET', 'POST'])
def index():
    weather_data = None
    city = "London"  # Cidade padrão para a primeira renderização da página

    if request.method == 'POST':
        city = request.form.get('city')  # Captura a cidade inserida no formulário

    # Fazer a requisição para a API de previsão do tempo
    params = {
        'q': city,
        'appid': API_KEY,
        'units': 'metric',
        'lang': 'pt'
    }
    response = requests.get(API_URL, params=params)
    if response.status_code == 200:
        weather_data = response.json()
    
    return render_template('index.html', weather=weather_data, city=city)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)

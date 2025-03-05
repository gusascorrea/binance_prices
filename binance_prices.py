import requests
import time

url = "https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT"

while True:
    response = requests.get(url)
    data = response.json()

    print(f"Preço do BTC/USDT: {data['price']}")
    time.sleep(2)
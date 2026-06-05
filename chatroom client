import socket
import threading

# Tady kamarád zadá tvoji IP
HOST = '10.0.0.27' 
PORT = 5555

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect((HOST, PORT))

def receive():
    while True:
        try:
            message = client.recv(1024).decode('utf-8')
            print(f"\nKamarád: {message}")
        except:
            print("Spojení ztraceno!")
            client.close()
            break

def write():
    while True:
        message = input("> ")
        client.send(message.encode('utf-8'))

threading.Thread(target=receive).start()
threading.Thread(target=write).start()

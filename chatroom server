import socket
import threading

# Tvoje lokální IP
HOST = '10.0.0.27'
PORT = 5555

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((HOST, PORT))
server.listen()

print(f"Server běží na {HOST}:{PORT}...")

clients = []

def broadcast(message, _client):
    for client in clients:
        if client != _client:
            try:
                client.send(message)
            except:
                clients.remove(client)

def handle(client):
    while True:
        try:
            message = client.recv(1024)
            broadcast(message, client)
        except:
            clients.remove(client)
            client.close()
            break

while True:
    client, address = server.accept()
    print(f"Připojil se: {str(address)}")
    clients.append(client)
    threading.Thread(target=handle, args=(client,)).start()

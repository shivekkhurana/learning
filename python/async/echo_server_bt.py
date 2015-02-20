#! /usr/bin/python3

from bluetooth import BluetoothSocket, RFCOMM, PORT_ANY, SERIAL_PORT_CLASS, SERIAL_PORT_PROFILE, advertise_service
from asyncio import Task, coroutine, get_event_loop


class Peer(object):
    def __init__(self, server, sock, name):
        self.loop = server.loop
        self.name = name
        self._sock = sock
        self._server = server
        Task(self._peer_handler())

    def send(self, data):
        return self.loop.sock_sendall(self._sock, data.encode('utf8'))

    @coroutine
    def _peer_handler(self):
        try:
            yield from self._peer_loop()
        except IOError:
            pass
        finally:
            self._server.remove(self)

    @coroutine
    def _peer_loop(self):
        while True:
            buf = yield from self._sock.recv(1024)
            print("received : %s" % buf)
            if buf == b'':
                break
            self._server.broadcast('%s: %s' % (self.name, buf.decode('utf8')))


class Server(object):
    def __init__(self, loop):
        self.loop = loop
        self._serv_sock = BluetoothSocket(RFCOMM)
        self._serv_sock.setblocking(0)
        # self._serv_sock.setsockopt(SOL_SOCKET, SO_REUSEADDR, 1)
        self._serv_sock.bind(("", PORT_ANY))
        self._serv_sock.listen(5)

        advertise_service(
            self._serv_sock,
            "Rewave Server",
            service_id='a1a738e0-c3b3-11e3-9c1a-0800200c9a66',
            service_classes=['a1a738e0-c3b3-11e3-9c1a-0800200c9a66', SERIAL_PORT_CLASS],
            profiles=[SERIAL_PORT_PROFILE]
        )

        self._peers = []
        # Task(self._server())
        self._server()

    def remove(self, peer):
        self._peers.remove(peer)
        self.broadcast('Peer %s quit!\n' % (peer.name,))

    def broadcast(self, message):
        print(message)
        for peer in self._peers:
            peer.send(message)


    def _server(self):
        while True:
            peer_sock, peer_name = yield from self._serv_sock.accept()
            peer = Peer(self, peer_sock, peer_name)
            self._peers.append(peer)
            self.broadcast('Peer %s connected!\n' % (peer.name,))


def main():
    loop = get_event_loop()
    Server(loop)
    loop.run_forever()

if __name__ == '__main__':
    main()
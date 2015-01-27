import asyncio


class EchoProtocol(asyncio.Protocol):
    transport = None

    def connection_made(self, transport):
        self.transport = transport

    def data_received(self, data):
        print("Received ", data, ". Echoing back ...")
        self.transport.write(data)

    def connection_lost(self, exc):
        server.close()


event_loop = asyncio.get_event_loop()
server = event_loop.run_until_complete(event_loop.create_server(EchoProtocol, '127.0.0.1', 5555))
event_loop.run_until_complete(server.wait_closed())
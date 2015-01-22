# /usr/bin/python3

import asyncio
import urllib.request


global google

@asyncio.coroutine
def getRes(url):
    global google
    google = yield from urllib.request.urlopen(url)
    print(google)


@asyncio.coroutine
def countdown(n):
    while n >= 0:
        yield n
        n -= 1


def main():
    event_loop = asyncio.get_event_loop()
    getRes('http://google.com')
    #countdown_gen = countdown(5)

    try:
        event_loop.run_forever()
    except KeyboardInterrupt as e:
        pass


if __name__ == '__main__':
    main()

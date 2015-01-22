import asyncio
import urllib.request


@asyncio.coroutine
def getRes(url, future):
    url_info = urllib.request.urlopen(url).info()
    future.set_result((url, url_info))


def gotRes(future):
    print("Received info of length : %d" % len(future.result()[1]))


def main():
    loop = asyncio.get_event_loop()
    google_future = asyncio.Future()  # getRes('http://www.google.com')
    asyncio.async(getRes('http://www.google.com', google_future))
    google_future.add_done_callback(gotRes)

    try:
        loop.run_forever()
    except KeyboardInterrupt as e:
        pass

if __name__ == '__main__':
    main()

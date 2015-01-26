# /usr/bin/python3

import asyncio
import functools
import urllib.request

@asyncio.coroutine
def get_info(url):
    #res = yield from (line for line in urllib.request.urlopen(url).info())
    res = urllib.request.urlopen(url).info()
    print(res)
    return res

def main():
    event_loop = asyncio.get_event_loop()
    print("Get info called")
    mj_info = event_loop.call_soon(functools.partial(get_info, "http://musejam.com"))
    print("After get info")
    try:
        event_loop.run_forever()
    except KeyboardInterrupt as e:
        pass


if __name__ == '__main__':
    main()

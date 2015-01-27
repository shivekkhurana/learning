#! /usr/bin/python

import asyncio
import time

@asyncio.coroutine
def sleepy():
    print("Before Sleep ", time.time())
    yield from asyncio.sleep(5)
    print("After sleep ", time.time())


def main():
    asyncio.get_event_loop().run_until_complete(sleepy())

if __name__ == "__main__":
    main()


# still can't get it :|
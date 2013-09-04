"""
dumpimages.py
    Downloads all the images on the supplied URL, and saves them to the
    specified output file ("/test/" by default)

Usage:
    python dumpimages.py http://example.com/ [output]
"""

from BeautifulSoup import BeautifulSoup as bs
import urlparse
from urllib2 import urlopen
from urllib import urlretrieve
import os
import sys

def main(url, out_folder="D:\Code\python\scripts\inspirations"):
    """Downloads all the images at 'url' to /test/"""
    soup = bs(urlopen(url))
    parsed = list(urlparse.urlparse(url))
    #print soup.findAll("img")
    for image in soup.findAll("img"):
        if 'avatar' not in image:
            print "Image: %(src)s" % image
            filename = image["src"].split("/")[-1]
            parsed[2] = image["src"]
            outpath = os.path.join(out_folder, filename)
            if image["src"].lower().startswith("http"):
                urlretrieve(image["src"], outpath)
            else:
                urlretrieve(urlparse.urlunparse(parsed), outpath)

def _usage():
    print "usage: python dumpimages.py http://example.com [outpath]"

urls = ['http://fuck-yeahpickuplines.tumblr.com/page/']
pages = list(range(1,135));

for url in urls:
    for page in pages:
        u = url + str(page)
        print u
        try:
            main(u)
        except IOError:
            continue

#single page type
'''
url = []
for url in urls:
    main(url)

if __name__ == "__main__":
    url = sys.argv[-1]
    out_folder = "/test/"
    if not url.lower().startswith("http"):
        out_folder = sys.argv[-1]
        url = sys.argv[-2]
        if not url.lower().startswith("http"):
            _usage()
            sys.exit(-1)
    main(url, out_folder)
'''
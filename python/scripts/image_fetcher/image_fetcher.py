"""
dumpimages.py
	Downloads all the images on the supplied URL, and saves them to the
	specified output file ("/test/" by default)

Usage:
	python dumpimages.py http://example.com/ [output]
"""

from BeautifulSoup import BeautifulSoup as bs
import urlparse, os, sys
from urllib2 import urlopen
from urllib import urlretrieve

def download_all(url, out_folder="tumblr_crawled_data"):
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
			try:
				if image["src"].lower().startswith("http"):
					urlretrieve(image["src"], outpath)
				else:
					urlretrieve(urlparse.urlunparse(parsed), outpath)
			except OSError as e:
				os.mkdir(out_folder)

urls = ['http://call-0f-duty.tumblr.com/page/']
pages = list(range(1,135));

def main():
	for url in urls:
		for page in pages:
			u = url + str(page)
			print u
			try:
				download_all(u)
			except IOError:
				continue

if __name__ == '__main__':
	main()

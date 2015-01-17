import re

byte_regex = re.compile("""^.*]\s".*"\s[0-9]{3}\s([0-9]*)\s.*$""")
log = (line for line in open('access.log'))
bytes = (int(byte_regex.search(line).group(1)) for line in log)
print("Total bytes transfered : %d" % sum(bytes))

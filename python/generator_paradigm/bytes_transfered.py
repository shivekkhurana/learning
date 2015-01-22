import re

byte_regex = re.compile("""^.*]\s".*"\s[0-9]{3}\s([0-9]*)\s.*$""")
log = (line for line in open('access.log'))
byte_groups = (byte_regex.search(line) for line in log)
bytes = (int(byte_group.group(1)) for byte_group in byte_groups if byte_group != None)
print("Total bytes transfered : %d" % sum(bytes))

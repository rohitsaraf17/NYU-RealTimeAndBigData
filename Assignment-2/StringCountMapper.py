#!/usr/bin/env python

import re
import sys

tweetData = ["hackathon","Dec","Chicago","Java"]
for line in sys.stdin:
	val = line.strip(" ")
	for data in tweetData:
		n = val.lower().find(data.lower())
		if n != -1:
			print ("%s\t%s" % (data, 1))
		else :
			print ("%s\t%s" % (data, 0))
#!/usr/bin/env python

import sys

(last_key, sum) = (None, 0)
for line in sys.stdin:
    (key, val) = line.strip().split("\t")
    if last_key and last_key != key:
        print ("%s\t%s" % (last_key, sum))
        sum=0
        (last_key, sum) = (key, sum + int(val))
    else :
        (last_key, sum) = (key, sum + int(val))
if last_key:
    print ("%s\t%s" % (last_key, sum))
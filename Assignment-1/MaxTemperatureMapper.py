#!/usr/bin/env python

import re
import sys
for line in sys.stdin:
    val = line.strip()
    (year, temp, q) = (val[15: 19], val[37: 42], val[42: 43])
    if (temp != "+9999" and re.match("[01459]", q)):
        print "%s\t%s" % (year, temp)

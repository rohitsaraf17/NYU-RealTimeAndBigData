import sys
with  sys.stdin as f:
	pr=0.0
	lines = f.readlines()
	for i in xrange(0, len(lines)):
		l = lines[i].strip()
		key , value =  l.split(' ',1)	
		arr = value.split(',')
		if len(arr) == 1:
			out = key +' ' + ''.join( [str(k) + ' ' for k in arr] )
		else:
			pr += float(arr[1])
		if( i  == (len(lines)-1 ) ):
			print "%s%0.17f" % (out , pr)
		else:
			if lines[ i+1 ].strip().split(' ',1)[0]	!= key :
				print "%s%0.17f" % (out , pr)
				pr= 0.0				
import fileinput
for l in fileinput.input():
	ar = l.strip().split(' ')

	node = ar[0]
	rank = float(ar[-1])
	# print 'node is ' + node + ' rank is ' + rank
	out = ar[1:]
	out = out[:-1]
	# print out

	for i in out:
		# print  i + ' ' + node + ',' + str(rank/ len(out)   ) 
		print "%s %s,%0.17f" % (i,node, rank/len(out)    ) 
	
	print node + ' ' + ''.join( [str(i) + ' ' for i in out] )
	
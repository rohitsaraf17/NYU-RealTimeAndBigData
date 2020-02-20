dictStringCount = {
"hackathon":0,
"Dec":0,
"Chicago":0,
"Java":0
}
mylines = []
myfile = open('SampleInput.txt', "rt")
for line in myfile:
	mylines.append(line)
for line in mylines:
	for string in dictStringCount:
		n = line.lower().find(string.lower())
		if n != -1:
			dictStringCount[string]= dictStringCount[string]+1
for key in sorted(dictStringCount.keys()):
    print("%s %s" % (key, dictStringCount[key]))
myfile.close()
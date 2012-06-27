import os,sys

MAX_LEVEL = 0
if len(sys.argv) == 3:
	MAX_LEVEL = 100
if len(sys.argv) == 4:
	MAX_LEVEL = int(sys.argv[3])
if MAX_LEVEL == 0:
	print "Usage: python find.py <dir> <filename> [level]"
	print "Paramters:"
	print "    dir         Directory to search in"
	print "    filename    Filename to find. "
	print "    level       Depth of Sub-Directory to search in, DEFAULT 100"
	print "Sample:"
	print "  python find.py c:/windows term 1"
	print "    list all files contain 'term' within c:/windows and it's direct sub-dir"
	print "    file c:/windows/system32/termsrv.dll will list "
	print "    but c:/windows/system32/dllcache/termsrv.dll won't"
	print ""
	exit()
print "MAX_LEVEL: " + str(MAX_LEVEL)

def listdir(parent, filename, level):
	if level > MAX_LEVEL:
		return
	print "\t(find in: " + parent,
	print "level: " + str(level) + ")"
	fielnum = 0
	list = os.listdir(parent)
	dirlist = [];
	for item in list:
		filepath = os.path.join(parent, item)
		if item.find(filename) >= 0:
			print item
		if  os.path.isdir(filepath):
			dirlist.append(filepath)
	for item in dirlist:
		listdir(item, filename, level+1)

listdir(sys.argv[1], sys.argv[2], 0)


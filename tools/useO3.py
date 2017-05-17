#encoding: utf-8

import os
import sys

def useO3(fname):
	cache = []
	rwt = False
	try:
		with open(fname) as f:
			for line in f:
				tmp = line.strip("\r\n")
				tmp = tmp.decode("utf-8")
				tt = tmp.strip()
				if tmp.find(" -O2 ")!=-1 or tt.endswith("-O2") or tt.endswith("-O2\"") or tt.startswith("-O2") or tmp.find("=-O2")!=-1 or tmp.find("\"-O2")!=-1:
					tmp = tmp.replace("-O2","-O3")
					rwt = True
				cache.append(tmp)
	except:
		rwt = False
	if rwt:
		while not cache[-1].strip():
			del cache[-1]
		cache.append("")
		cache = "\n".join(cache).encode("utf-8")
		print("edit:"+fname)
		with open(fname,"w") as f:
			f.write(cache)
	return rwt

def walkdir(dname):
	count = 0
	for root, dirs, files in os.walk(dname):
		for file in files:
			if file=="Makefile":
				rp = useO3(os.path.join(root,file))
				if rp:
					count += 1
	if count > 0:
		print(str(count)+" files edited")

if __name__ == "__main__":
	walkdir(sys.argv[1].decode("utf-8"))

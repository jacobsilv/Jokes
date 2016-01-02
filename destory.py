import os, sys

dir="./"

for infile in os.listdir(dir):
	if infile == "horrible.py":
		print "nty"
	elif " " in infile:
		new_infile=""
		for char in infile:
			if " "== char:
				new_infile += "\\ "
			else:
				new_infile+=char
		os.system("rm -rf "+new_infile)

	else:
		os.system("rm -rf "+infile)

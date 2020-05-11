

import sys, getopt

# proof of concept python script. 
#   this script should be in your user's root directory

# this basic script is going to write a file with the
#   active Room name as its contents
#   the file should appear in the user's root directory (cd ~)

from os.path import expanduser
home = expanduser("~")

with open(home + '/somefile.txt', 'w') as the_file:
  
  
  # join all subsequent arguments 
  # (spaces in Room names will make them seem like separate arguments)
  if len(sys.argv) > 2:
    the_file.write(" ".join(sys.argv[1:]))
  else:
    the_file.write(sys.argv[1])
    
the_file.close()
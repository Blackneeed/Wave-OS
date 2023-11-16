import os
import sys

if os.path.exists(sys.argv[1]):
    print(f"Folder {sys.argv[1]} already exists!")
    exit()

try:
    os.mkdir(sys.argv[1])
except:
    print(f"Cannot create {sys.argv[1]} folder!")
    exit()
else:
    print(f"Succesfully created {sys.argv[1]} folder!")
import os
import sys

if not os.path.exists(sys.argv[1]):
    print(f"Folder {sys.argv[1]} doesn't exist!")
    exit()

try:
    os.system(f"del {sys.argv[1]}\* /s /q /f > nul && rd {sys.argv[1]} > nul")
except:
    print(f"Cannot remove {sys.argv[1]} folder!")
    exit()
else:
    print(f"Succesfully removed {sys.argv[1]} folder!")
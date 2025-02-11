import subprocess

subprocess.call("../configure --host=maven", shell = True)
subprocess.call("make", shell = True)
subprocess.call("../convert", shell = True)
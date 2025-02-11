import subprocess
import sys

mod = sys.argv[1]
#cmd = sys.argv[2]

subprocess.call("make", shell = True)
subprocess.call("make check", shell = True)

match mod:
	case "stall":
		subprocess.call("make check-asm-pv2stall", shell = True)
		subprocess.call("make check-asm-rand-pv2stall", shell = True)
	case "long":
		subprocess.call("make check-asm-pv2long", shell = True)
		subprocess.call("make check-asm-rand-pv2long", shell = True)
	case "byp":
		subprocess.call("make check-asm-pv2byp", shell = True)
		subprocess.call("make check-asm-rand-pv2byp", shell = True)
	case "all": 
		subprocess.call("make check-asm-pv2stall", shell = True)
		subprocess.call("make check-asm-rand-pv2stall", shell = True)
		subprocess.call("make check-asm-pv2byp", shell = True)
		subprocess.call("make check-asm-rand-pv2byp", shell = True)
		subprocess.call("make check-asm-pv2long", shell = True)
		subprocess.call("make check-asm-rand-pv2long", shell = True)

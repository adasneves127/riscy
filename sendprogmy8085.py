import serial
import time
import sys

def sendprog(devname,prog):
	f=file(prog).read()

	ser=serial.Serial(port=devname, baudrate=300, timeout=1)
	ser.flushOutput()
	ser.flushInput()

	for line in f:
		if line=='\n':
			ser.write('\r')
			ser.read()
			time.sleep(0.1)
		elif line=='\r':
			continue
		else:
			ser.write(line)
		response=ser.read()
		print "sending: ",line,
		print response
#		time.sleep(0.2)
	ser.close()


sendprog(sys.argv[1],sys.argv[2])

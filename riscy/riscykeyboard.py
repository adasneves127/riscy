keys0=[['Q','W','E','R','T','Y','U','I'],['A','S','D','F','G','H','O','P'],['Z','X','C','V','B','J','K','L'],[chr(0x80),' ','[',']','N','M','\b','\r']]
keys1=[['1','2','3','4','5','6','7','8'],['!','*','(',')','+','=','9','0'],['"',"'",'<','>',',','.','?','/'],[chr(0x80),' ','#','$',':',';','\b','\r']]

def bitify(v):
	b=[0]*12
	for i in range(12):
		b[i]=v&1
		v=v>>1
	return b

def rom():
	f=file("riscykeyboard.rom","wb")

	for a in range(8192):
		c=bitify(a&0xfff)
		if c[0:4].count(0)==1 and c[4:12].count(0)==1:
			row=c[0:4].index(0)
			col=c[4:12].index(0)
			if a<4096:
				k=keys0[row][col]
			else:
				k=keys1[row][col]

			print c, row, col, k, hex(ord(k))[2:]
			f.write(k)
		else:
			f.write(chr(0))

	f.close()
rom()

#	ADD		RD, RS	add registers RD+RS, store the result in RD
#	SUB		RD, RS	subtract registers RD-RS, store the result in RD
#	LOAD		RD,[RS]	load 1 byte from memory at address RS into RD
#	STORE		RD,[RS]	store 1 byte from RD into memory at address RS
#	JLEZ		RD,[RS]	if RD<=0, jump to address in RS
#	JALR		RD,[RS]	save PC+1 into RD, jump to RS
#	LUI		RD, IMM	load 4-bit IMM into the upper four bits of RD
#	LLI		RD, IMM	load 4-bit IMM into the lower four bits of RD


import sys

def main(fname):
	lines=file(fname).read().split("\n")[:-1]
	symtab={}
	regtab={'a':0,'A':0,'b':1,'B':1,'c':2,'C':2,'d':3,'D':3}
	regtab["a"]=0
	addr=0
	for line in lines:
		if ";" in line:
			continue
		if len(line)==0:
			continue
		line=line.replace(","," ")
		line=line.split()
		label=line[0]
		if "#" in label:
			symtab[label]=addr
			continue
		addr=addr+1
	addr=0
	rom=""
	for line in lines:
		if ";" in line:
			continue
		if len(line)==0:
			continue
		line=line.replace(","," ")
		line=line.split()
		label=line[0]
		if "#" in label:
			continue
#		print line
		opcode=line[0].lower()
		op1=line[1]
		op2=line[2]

		if opcode=="add":
			instcode=(0<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="sub":
			instcode=(1<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="load":
			op2=op2.replace('[','').replace(']','')
			instcode=(2<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="store":
			op2=op2.replace('[','').replace(']','')
			instcode=(3<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="jlez":
			op2=op2.replace('[','').replace(']','')
			instcode=(4<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="jalr":
			op2=op2.replace('[','').replace(']','')
			instcode=(5<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="lui":
			if not '#' in op2:
				op2=int(op2,16)
			else:
				op2=symtab[op2]>>4
#			print op2
			op2_h=op2>>2
			op2_l=op2&3
			instcode=(2<<6)|(op2_h<<4)|(regtab[op1]<<2)|op2_l
		elif opcode=="lli":
			if not '#' in op2:
				op2=int(op2,16)
			else:
				op2=symtab[op2]&0xf
#			print op2
			op2_h=op2>>2
			op2_l=op2&3
			instcode=(3<<6)|(op2_h<<4)|(regtab[op1]<<2)|op2_l

		instcode=hex(instcode)[2:]
		print instcode

		rom+="<value "+str(addr)+">"+instcode+"</value>\n"

		addr=addr+1

	print
	print rom

main(sys.argv[1])

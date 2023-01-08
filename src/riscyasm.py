#	NOP			do nothing
#		0 0 0 0 0 0 0 0
#
#	HALT			halt processor
#		0 0 0 0 0 0 0 1
#
#	PAGE		[RD]	set the upper 8 bits of load/store
#		0 0 0 0 p p 1 1
#
#	SUB		RD, RS	subtract registers RD-RS, store the result in RD
#		0 0 0 1 d d s s
#
#	LOAD		RD,[RS]	load 1 byte from memory at address PAGE:RS into RD
#		0 0 1 0 d d s s
#
#	STORE		RD,[RS]	store 1 byte from RD into memory at address PAGE:RS
#		0 0 1 1 d d s s
#
#	SKIPZ		RD	if RD==0, skip next instruction
#		0 1 0 0 d d 0 0
#
#	SKIPNZ		RD	if RD!=0, skip next instruction
#		0 1 0 0 d d 0 1
#
#	SKIPL		RD	if RD<0, skip next instruction
#		0 1 0 0 d d 1 0
#
#	SKIPGE		RD	if RD>=0, skip next instruction
#		0 1 0 0 d d 1 1
#
#	JALR		RD,[RS]	save PC+1 into RD, jump to RS
#		0 1 0 1 d d s s
#
#	NAND		RD, RS	nand registers ~(RD&RS), store the result in RD
#		0 1 1 0 d d s s
#
#	ADD		RD, RS	add registers RD+RS, store the result in RD
#		0 1 1 1 d d s s
#
#	INC		RD	RD = RD+1
#		1 0 0 0 d d 0 0
#
#	DEC		RD	RD = RD-1
#		1 0 0 0 d d 0 1
#
#	OUT		RD	output = RD
#		1 0 0 0 d d 1 0
#
#	IN		RD	RD = input
#		1 0 0 0 d d 1 1
#
#	JMPFAR			jump to a 16 bit address C:RD, saving PC+1 into RS
#		1 0 0 1 d d 1 0
#
#	PUSH			sp--, save RD onto stack
#		1 0 1 0 d d 0 0
#
#	POP			load RD from stack, sp++
#		1 0 1 0 d d 0 1
#
#	STACKPAGE		set the upper 8 bits of push and pop
#		1 0 1 0 d d 1 0
#
#	SLI		RD, IMM	shift RD 4 left, then load 4-bit IMM into the lower four bits of RD
#		1 1 i i d d i i
#

import sys

def tohex(num,z):
	num=hex(num)[2:]
	num="0"*(z-len(num))+num
	return num

def macro(lines):
	page=0
	funcpage={}
	labelpage={}
	for line in lines:
		if ";" in line or len(line)==0 or len(line.split())==0:
			continue
		if line.split()[0]=="org":
			page=int(line.split()[1],16)/256
			continue
		if line.split()[0]==".func":
			funcpage[line.split()[1]]=page
		if line[0]=="#":
			labelpage[line.split()[0][1:]]=page
	newlines=[]
	funcname="_"
	funcnamecount=0
	page=0
	for line in lines:
		if (";" in line and not ".str" in line) or len(line)==0 or len(line.split())==0:
			newlines.append(line)
		elif line.split()[0][0]!=".":
			if line.split()[0]=="org":
				page=int(line.split()[1],16)/256
			newlines.append(line)
		else:
			if line.split()[0]==".call":					#e.g., .call printstring
				dest=line.split()[1]
				newlines.append("; calling global function "+dest)
				newlines.append("\tpush\td")				#save d,c,b values
				newlines.append("\tpush\tc")
				newlines.append("\tpush\tb")
				newlines.append("\tli\td,"+hex(page))			#push return page
				newlines.append("\tpush\td")
				newlines.append("\tpush\tc")				#second backup of c
				newlines.append("\tli\tc,"+hex(funcpage[dest]))
				newlines.append("\tli\td,#"+dest)
				#stack is now old-d,old-c,old-b,retpage,old-c.  c=destpage, d=destaddr
				newlines.append("\tjmpfar\td,d")
				newlines.append("\tpop\tb")				#restore b,c,d
				newlines.append("\tpop\tc")
				newlines.append("\tpop\td")
			elif line.split()[0]==".func":
				funcname=line.split()[1]
				funcnamecount=0
				newlines.append("")
				newlines.append("; ------- GLOBAL FUNCTION "+funcname+" -------")
				newlines.append("#"+funcname)
				newlines.append("\tpop\tc")				#restore c
				newlines.append("\tpush\td")				#push return addr
				#stack is now old-d,old-c,old-b,ret-page,ret-addr
			elif line.split()[0]==".endfunc":
				newlines.append("\tpop\td")				#d=ret addr
				newlines.append("\tpop\tc")				#c=ret-page
				newlines.append("\tjmpfar\td,d")
				newlines.append("")
				newlines.append("; "+funcname+" ends")
				newlines.append("")
			elif line.split()[0]==".goto":		#.goto label
				newlines.append("\tli\td,#"+line.split()[1])
				newlines.append("\tjalr\td,d")
			elif line.split()[0]==".gotofar":	#.gotofar label
				dest=line.split()[1]
				newlines.append("\tli\tc,"+hex(labelpage[dest]))
				newlines.append("\tli\td,#"+line.split()[1])
				newlines.append("\tjmpfar\td,d")
			elif line.split()[0]==".move":		#.move a,b
				r1=line.split()[1][0]
				r2=line.split()[1][2]
				newlines.append("\tsub\t"+r1+" "+r1)
				newlines.append("\tadd\t"+r1+" "+r2)
			elif line.split()[0]==".str":
				for c in line.split("'")[1]:
					newlines.append("\tdb\t"+hex(ord(c)))
				newlines.append("\tdb\t0")
			elif line.split()[0]==".if":
								#if options:
								#.if a == b then label else label
								#.if a <= 3 then label else label
								#.if a > b then label
								# if will destroy d reg
				print line.split()
				first=line.split()[1]
				comp=line.split()[2]
				second=line.split()[3]
				label1=line.split()[5]
				if len(line.split())==6:
					label2=""
				else:
					label2=line.split()[7]

				newlines.append("\tpush\t"+first)	#backup first reg
				if second in ["a","b","c","d"]:		#if second is a register, do subtract
					newlines.append("\tsub\t"+first+","+second)	#eg sub a,b
				else:
					newlines.append("\tli\td,"+second)		#eg sub a,5
					newlines.append("\tsub\t"+first+",d")
				#don't have > or <= skips, so negate these terms
				if comp==">" or comp=="<=":
					newlines.append("\tsub\td,d")			#negate first reg
					newlines.append("\tsub\td,"+first)
					newlines.append("\tsub\t"+first+","+first)
					newlines.append("\tadd\t"+first+",d")
					if comp==">":
						comp="<"
					else:
						comp=">="
				newlines.append("\tli\td,#@"+funcname+str(funcnamecount))	#set false temp target
				if comp=="==":
					newlines.append("\tskipz\t"+first)
				elif comp=="!=":
					newlines.append("\tskipnz\t"+first)
				elif comp=="<":
					newlines.append("\tskipl\t"+first)
				elif comp==">=":
					newlines.append("\tskipge\t"+first)
				newlines.append("\tjalr\td,d")			#go to false temp target
				newlines.append("\tpop\t"+first)		#restore first reg
				newlines.append("\tli\td,#"+label1)	#jump to true target
				newlines.append("\tjalr\td,d")
				newlines.append("#@"+funcname+str(funcnamecount))	#false temp target
				newlines.append("\tpop\t"+first)		#restore first reg
				if label2!="":				#else case
					newlines.append("\tli\td,#"+label2)	#jump to false target
					newlines.append("\tjalr\td,d")
				funcnamecount+=1
	return newlines

def main(fname):
	binfile=file(fname+".bin","w")
	txtbinfile=file(fname+".bin.txt","w")
	romfile=file(fname+".rom.bin","w")
	lstfile=file(fname+".lst","w")

	lines=file(fname).read().split("\n")[:-1]

	lines=macro(lines)

	symtab={}
	regtab={'a':0,'A':0,'b':1,'B':1,'c':2,'C':2,'d':3,'D':3}
	regtab["a"]=0
	addr=0
	newlines=[]
	for line in lines:
#		if ";" in line:
#			continue
#		if len(line)==0:
#			continue
		if ";" in line or len(line)==0 or len(line.split())==0:
			newlines.append(line)
			continue

		line=line.replace(","," ")
		lineparts=line.split()
		print lineparts
		if lineparts[0].lower()=="li":
			op1=lineparts[1]
			op2=lineparts[2]
			if not '#' in op2:
				if op2[0:2]=="0x":
					op2=op2[2:]
					op2u=(int(op2,16)>>4)&15
					op2l=int(op2,16)&15
				else:
					op2u=(int(op2,10)>>4)&15
					op2l=int(op2,10)&15
				op2u,op2l=str(op2u),str(op2l)
			else:
				op2u,op2l=op2,op2
			lineu="\tsliu "+op1+" "+op2u
			linel="\tslil "+op1+" "+op2l
			newlines.append(lineu)
			newlines.append(linel)

			print lineu,linel

		else:
			newlines.append(line)

	for line in newlines:
		if ";" in line:
			continue
		if len(line)==0 or len(line.split())==0:
			continue
#		line=line.replace(","," ")
		line=line.split()
		label=line[0]
		if "#" in label:
			symtab[label]=addr
			continue
		if ":" in label:
			label="#"+label.replace(":","")
			symtab[label]=addr
			continue
		addr=addr+1


		if len(line)>=2 and line[0].lower()=="org":
			if int(line[1],16) < addr-1:
				print "Error: page overflow",hex(addr)
				return
			addr=int(line[1],16)
		print addr

	print symtab
	addr=0
	for line in newlines:
		if ";" in line:
			lstfile.write("\t"+line+"\n")
			continue
		if len(line)==0 or len(line.split())==0:
			lstfile.write("\t"+line+"\n")
			continue
		lstfile.write("\n"+tohex(addr,4)+"\t"+line)
		line=line.replace(","," ")
		line=line.split()
		label=line[0]
		if "#" in label or ":" in label:
			continue
#		print line
		opcode=line[0].lower()
		if len(line)>=2:
			op1=line[1]
		if len(line)>=3:
			op2=line[2]


		if opcode=="sub":
			instcode=(1<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="load":
			op2=op2.replace('[','').replace(']','')
			instcode=(2<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="store":
			op2=op2.replace('[','').replace(']','')
			instcode=(3<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="skipz":
			instcode=(4<<4)|(regtab[op1]<<2)|0
		elif opcode=="skipnz":
			instcode=(4<<4)|(regtab[op1]<<2)|1
		elif opcode=="skipl" or opcode=="skipm":
			instcode=(4<<4)|(regtab[op1]<<2)|2
		elif opcode=="skipge" or opcode=="skipp":
			instcode=(4<<4)|(regtab[op1]<<2)|3
		elif opcode=="jalr":
			op2=op2.replace('[','').replace(']','')
			instcode=(5<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="nand":
			instcode=(6<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="add":
			instcode=(7<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="nop":
			instcode=0
		elif opcode=="halt":
			instcode=1
		elif opcode=="jmp" or opcode=="jmpfar":
			op2=op2.replace('[','').replace(']','')
			instcode=(9<<4)|(regtab[op1]<<2)|(regtab[op2])
		elif opcode=="page":
			op1=op1.replace('[','').replace(']','')
			instcode=(0<<4)|(regtab[op1]<<2)|3
		elif opcode=="stackpage":
			op1=op1.replace('[','').replace(']','')
			instcode=(0xa<<4)|(regtab[op1]<<2)|2
		elif opcode=="inc":
			instcode=(8<<4)|(regtab[op1]<<2)|0
		elif opcode=="dec":
			instcode=(8<<4)|(regtab[op1]<<2)|1
		elif opcode=="neg":
			instcode=(8<<4)|(regtab[op1]<<2)|2
		elif opcode=="out":
			instcode=(8<<4)|(regtab[op1]<<2)|2
		elif opcode=="in":
			instcode=(8<<4)|(regtab[op1]<<2)|3
		elif opcode=="push":
			instcode=(0xa<<4)|(regtab[op1]<<2)|0
		elif opcode=="pop":
			instcode=(0xa<<4)|(regtab[op1]<<2)|1


		elif opcode=="sliu":
			if not '#' in op2:
				if op2[0:2]=="0x":
					op2=op2[2:]
					op2=int(op2,16)&0xf
				else:
					op2=int(op2,10)&0xf
			else:
				op2=(symtab[op2]>>4)&0xf
				lstfile.write("\t["+tohex(op2,2)+"]")
#			print op2
			op2_h=op2>>2
			op2_l=op2&3
			instcode=(3<<6)|(op2_h<<4)|(regtab[op1]<<2)|op2_l
		elif opcode=="slil":
			if not '#' in op2:
				if op2[0:2]=="0x":
					op2=op2[2:]
					op2=int(op2,16)&0xf
				else:
					op2=int(op2,10)&0xf
			else:
				op2=symtab[op2]&0xf
				lstfile.write("\t["+tohex(op2,2)+"]")
#			print op2
			op2_h=op2>>2
			op2_l=op2&3
			instcode=(3<<6)|(op2_h<<4)|(regtab[op1]<<2)|op2_l
		elif opcode=="sli":
			if op2[0:2]=="0x":
				op2=op2[2:]
				op2=int(op2,16)&0xf
			else:
				op2=int(op2,10)&0xf
			op2_h=op2>>2
			op2_l=op2&3
			instcode=(3<<6)|(op2_h<<4)|(regtab[op1]<<2)|op2_l
#		elif opcode=="addi":
#			op2=int(op2,16)&0xf
#			op2_h=op2>>2
#			op2_l=op2&3
#			instcode=(3<<6)|(op2_h<<4)|(regtab[op1]<<2)|op2_l


		elif opcode=="db":
			if op1[0:2]=="0x":
				op1=op1[2:]
				instcode=int(op1,16)&0xff
			else:
				instcode=int(op1,10)&0xff

		elif opcode=="org":
			destaddr=int(op1,16)&0xffff
			for i in range(addr,destaddr):
				txtbinfile.write("00\n")
				binfile.write(chr(0));
			addr=destaddr
			continue

		instcode=hex(instcode)[2:]
		print hex(addr)[2:],line,instcode

		txtbinfile.write(str(instcode)+"\n")
		binfile.write(chr(int(instcode,16)))

		romfile.write("<value "+str(addr)+">"+instcode+"</value>\n")

		addr=addr+1

	print

	lstfile.write("\n")
	binfile.close()
	romfile.close()
	txtbinfile.close()
	lstfile.close()

main(sys.argv[1])

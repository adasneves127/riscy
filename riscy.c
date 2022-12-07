#include <stdio.h>
#include <string.h>
#include <stdlib.h>

unsigned char memory[65536];
unsigned char PC,A,B,C,D,DATAPAGE,INSTPAGE,STACKPAGE,HALTED,SP;

const char* regnames[4]={"A","B","C","D"};

int debug=0;
int text=0;

unsigned char disp=0;
int dispcount=0;
void display(unsigned char c)
{
	if((c&0x80)!=0)
		return;
	putchar(disp);
	disp=0;
/*
	if((c&0xf)!=c)
		return;
	disp=(disp<<4)|(c&0xf);
	dispcount++;
	if (dispcount>=2)
	{
		dispcount=0;
		putchar(disp);
		disp=0;
	}
*/
}

void reset()
{
	PC=A=B=C=D=DATAPAGE=INSTPAGE=STACKPAGE=HALTED=SP=0;
}

void printRegs(unsigned long inst, unsigned char opCode, char* name)
{
	printf("%04lu: PC: %02x, A: %02x, B: %02x, C: %02x, D: %02x, SP: %02x, IPAGE: %02x, DPAGE: %02x, SPAGE: %02x, ins:%02x, %s\n",inst,PC,A,B,C,D,SP,INSTPAGE,DATAPAGE,STACKPAGE, opCode, name);
}

void memoryWrite(unsigned char page, unsigned char address, unsigned char val)
{
	if(page>=0x80)
		memory[((page<<8)|address)&0xffff]=val;
}

unsigned char memoryRead(unsigned char page, unsigned int address)
{
	return memory[((page<<8)|address)&0xffff];
}

unsigned char getreg(int r)
{
	switch(r)
	{
		case 0: return A;
		case 1: return B;
		case 2: return C;
		case 3: return D;
	}
}

void setreg(int r, unsigned char val)
{
	switch(r)
	{
		case 0: A=val; break;
		case 1: B=val; break;
		case 2: C=val; break;
		case 3: D=val; break;
	}
}

void doInstruction(unsigned long inst)
{
	char name[20];

//	unsigned char instruction = memory[(INSTPAGE<<8)|PC];
	unsigned char instruction = memoryRead(INSTPAGE,PC);
	PC=(PC+1)&0xff;

	int rd=(instruction>>2)&3;
	int rs=instruction&3;
	int imm=((instruction>>2)&0xc)|(instruction&3);
	int op4=instruction>>4;
	int op2=instruction>>6;
	int op0=instruction&3;
	unsigned char tmp;

	if(op4==0)
	{
		if(op0==0)
		{
			strcpy(name,"NOP");
		}
		else if (op0==1)
		{
			strcpy(name,"HALT");
			HALTED=1;
		}
		else if (op0==3)
		{
			strcpy(name,"PAGE ");
			strcat(name,regnames[rd]);
			DATAPAGE=getreg(rd);
		}
	}
	else if (op4==1)
	{
		strcpy(name,"SUB ");
		strcat(name,regnames[rd]);
		strcat(name,",");
		strcat(name,regnames[rs]);
		setreg(rd,(getreg(rd)-getreg(rs))&0xff);
	}
	else if (op4==2)
	{
		strcpy(name,"LOAD ");
		strcat(name,regnames[rd]);
		strcat(name,",[");
		strcat(name,regnames[rs]);
		strcat(name,"]");
//		setreg(rd,memory[(DATAPAGE<<8)|getreg(rs)]);
		setreg(rd,memoryRead(DATAPAGE,getreg(rs)));
	}
	else if (op4==3)
	{
		strcpy(name,"STORE ");
		strcat(name,regnames[rd]);
		strcat(name,",[");
		strcat(name,regnames[rs]);
		strcat(name,"]");
//		memory[(DATAPAGE<<8)|getreg(rs)]=getreg(rd);
		memoryWrite(DATAPAGE,getreg(rs),getreg(rd));
	}
	else if (op4==4)
	{
		if(op0==0)
		{
			strcpy(name,"SKIPZ ");
			strcat(name,regnames[rd]);
			if(getreg(rd)==0)
				PC=(PC+1)&0xff;
		}
		else if(op0==1)
		{
			strcpy(name,"SKIPNZ ");
			strcat(name,regnames[rd]);
			if(getreg(rd)!=0)
				PC=(PC+1)&0xff;
		}
		else if(op0==2)
		{
			strcpy(name,"SKIPL ");
			strcat(name,regnames[rd]);
			if((getreg(rd)&0x80)!=0)
				PC=(PC+1)&0xff;
		}
		else
		{
			strcpy(name,"SKIPGE ");
			strcat(name,regnames[rd]);
			if((getreg(rd)&0x80)==0)
				PC=(PC+1)&0xff;
		}
	}
	else if (op4==5)
	{
		strcpy(name,"JALR ");
		strcat(name,regnames[rd]);
		strcat(name,",[");
		strcat(name,regnames[rs]);
		strcat(name,"]");
		tmp=PC;
		PC=getreg(rs);
		setreg(rd,tmp);
	}
	else if (op4==6)
	{
		strcpy(name,"NAND ");
		strcat(name,regnames[rd]);
		strcat(name,",");
		strcat(name,regnames[rs]);
		setreg(rd,~(getreg(rd)&getreg(rs)));
	}
	else if (op4==7)
	{
		strcpy(name,"ADD ");
		strcat(name,regnames[rd]);
		strcat(name,",");
		strcat(name,regnames[rs]);
		setreg(rd,(getreg(rd)+getreg(rs))&0xff);
	}
	else if (op4==8)
	{
		if(op0==0)
		{
			strcpy(name,"INC ");
			strcat(name,regnames[rd]);
			setreg(rd,(getreg(rd)+1)&0xff);
		}
		if(op0==1)
		{
			strcpy(name,"DEC ");
			strcat(name,regnames[rd]);
			setreg(rd,(getreg(rd)-1)&0xff);
		}
/*		else if (op0==2)
		{
			strcpy(name,"NEG ");
			strcat(name,regnames[rd]);
			setreg(rd,(-getreg(rd))&0xff);
		}*/
		else if (op0==2)
		{
			strcpy(name,"OUT ");
			strcat(name,regnames[rd]);
//			putchar((char)getreg(rd));
			if(text==0)
				printf("out: %x\n",getreg(rd));
			else
			{
//				display(getreg(rd));
				printf("%c",(char)getreg(rd));
				if(getreg(rd)==0x0d)
					printf("\n");
			}
		}
		else if (op0==3)
		{
			char tmp1,tmp2;
			strcpy(name,"IN ");
			strcat(name,regnames[rd]);
			if(text==0)
			{
				printf("Enter a character code: ");
				tmp1 = getchar();
				if(tmp1>='0' && tmp1<='9') tmp1-='0';
				else if (tmp1>='A' && tmp1<='Z') tmp1=tmp1-'A'+10;
				else if (tmp1>='a' && tmp1<='z') tmp1=tmp1-'a'+10;
				tmp2 = getchar();
				if(tmp2>='0' && tmp2<='9') tmp2-='0';
				else if (tmp2>='A' && tmp2<='Z') tmp2=tmp2-'A'+10;
				else if (tmp2>='a' && tmp2<='z') tmp2=tmp2-'a'+10;
				setreg(rd,(tmp1<<4)|tmp2);
				printf("\n");
				getchar();
			}
			else
			{
				tmp1=getchar();
				if(tmp1==0xa) tmp1=0xd;
				setreg(rd,tmp1&0xff);
			}
		}
	}
	else if (op4==9)
	{
		strcpy(name,"JMPFAR");
		INSTPAGE=C;
		tmp=PC;
		PC=getreg(rs);
		setreg(rd,tmp);
	}
	else if (op4==0xa)
	{
		if(op0==0)
		{
			strcpy(name,"PUSH ");
			strcat(name,regnames[rd]);
			SP=(SP-1)&0xff;
//			memory[(STACKPAGE<<8)|SP]=getreg(rd);
			memoryWrite(STACKPAGE,SP,getreg(rd));
		}
		else if (op0==1)
		{
			strcpy(name,"POP ");
			strcat(name,regnames[rd]);
//			setreg(rd,memory[(STACKPAGE<<8)|SP]);
			setreg(rd,memoryRead(STACKPAGE,SP));
			SP=(SP+1)&0xff;
		}
		else if (op0==2)
		{
			strcpy(name,"STACKPAGE ");
			strcat(name,regnames[rd]);
			STACKPAGE=getreg(rd);
		}
	}
	else if (op2==3)
	{
		strcpy(name,"SLI ");
		strcat(name,regnames[rd]);
		strcat(name,",");
		char v[2];
		v[1]=0;
		v[0]=imm+'0';
		if(imm>9)
			v[0]=imm-0xa+'A';
		strcat(name,v);
		setreg(rd,(getreg(rd)<<4)|imm);
	}
	else
	{
		strcpy(name,"ERROR");
	}
	if(debug){
		printRegs(inst, memory[(INSTPAGE << 8 )| (PC)], name);
	} else{
		printf("%lu\n", inst);
	}
}

int main(int argc, char* argv[])
{
	FILE* f=fopen(argv[1],"r");
	int i=0;
	for(i=0; i<65536; i++)
		memory[i]=0xff;
	i=0;
	while(!feof(f))
	{
		int c;
		fscanf(f,"%x\n",&c);
		memory[i++]=(unsigned char)(c&0xff);
	}
	fclose(f);

//	if(argc>2)
//		memory[0xfe]=atoi(argv[2]);
	if(argc>2)
	{
		if(argv[2][0]=='d')
			debug=1;
		else if (argv[2][0]=='t')
			text=1;
	}

	unsigned long inst;

	reset();

//	for(inst=0; inst<1000000 && HALTED==0; inst++)
	for(inst=0; HALTED==0; inst++)
	{
		doInstruction(inst);
			
	}

//	for(int addr=0xd000; addr <= 0xd0ff; addr++)
//		printf("%x ",memory[addr]);
//	printf("\n\n");
//	for(int addr=0xfD00; addr <= 0xfD20; addr++)
//		printf("%x ",memory[addr]);

	return 0;
}

const int V0=A5,RS=A4,RW=A2,E=A3,STROBE=2,D4=10,D5=11,D6=12,D7=13,Bzero=A1,Bone=3,Btwo=4,Bthree=5,Bfour=6,Bfive=7,Bsix=8,Bseven=9;
// MEGA   const int VDD=53,V0=51,RS=49,RW=47,E=45,D4=35,D5=33,D6=31,D7=29,A=27,K=25;
volatile int cursorpos=0;

String line1="";
String line2="";

void writeWord(int rs,int d7,int d6,int d5,int d4)
{
  digitalWrite(RS,rs);
  digitalWrite(D4,d4);
  digitalWrite(D5,d5);
  digitalWrite(D6,d6);
  digitalWrite(D7,d7);
  digitalWrite(E,HIGH);
  delay(1);
  digitalWrite(E,LOW);
  delay(1);
}

void writeChar(char c)
{
  writeWord(1,(0)&1,(c>>6)&1,(c>>5)&1,(c>>4)&1);
  writeWord(1,(c>>3)&1,(c>>2)&1,(c>>1)&1,(c>>0)&1);
//  delay(100);
}

char getch()
{
  char c;
  while(digitalRead(STROBE)!=0);
  while(digitalRead(STROBE)!=1);
  c=(digitalRead(Bseven)<<7)|(digitalRead(Bsix)<<6)|(digitalRead(Bfive)<<5)|(digitalRead(Bfour)<<4)|(digitalRead(Bthree)<<3)|(digitalRead(Btwo)<<2)|(digitalRead(Bone)<<1)|(digitalRead(Bzero));
/*
  while ((UCSR0A & (1<<RXC0)) ==0)
  {
    
  }
  c=UDR0&0xff;
  */

  
  return c;
}

void setup() 
{
/*  Serial.begin(9600);
  pinMode(VDD,OUTPUT);
  pinMode(A,OUTPUT);
  pinMode(K,OUTPUT);
  digitalWrite(VDD,HIGH);
  digitalWrite(A,HIGH);
  digitalWrite(K,LOW);
  */

  pinMode(STROBE,INPUT);
  pinMode(Bzero,INPUT);
  pinMode(Bone,INPUT);
  pinMode(Btwo,INPUT);
  pinMode(Bthree,INPUT);
  pinMode(Bfour,INPUT);
  pinMode(Bfive,INPUT);
  pinMode(Bsix,INPUT);
  pinMode(Bseven,INPUT);

  pinMode(RW,OUTPUT);
  pinMode(V0,OUTPUT);
  digitalWrite(RW,LOW);
  digitalWrite(V0,LOW);

  pinMode(RS,OUTPUT);
  pinMode(E,OUTPUT);
  pinMode(D4,OUTPUT);
  pinMode(D5,OUTPUT);
  pinMode(D6,OUTPUT);
  pinMode(D7,OUTPUT);
  digitalWrite(E,LOW);
  digitalWrite(RS,LOW);

  delay(100);

  writeWord(0,0,0,1,0);
  writeWord(0,0,0,1,0);
  writeWord(0,1,1,0,0);

  writeWord(0,0,0,0,0); //disp on, cursor on, blink on
  writeWord(0,1,1,1,1);

  writeWord(0,0,0,0,0); //clear display
  writeWord(0,0,0,0,1);
/*
  UCSR0A=0;
  UBRR0=0x67;
  UCSR0B=(1<<RXEN0)|(1<<TXEN0);
  UCSR0C=(0<<7)|(1<<UCSZ00)|(1<<UCSZ01);
*/
//test:  writeChar('M');
  attachInterrupt(digitalPinToInterrupt(2),onStrobe,RISING);
}

void loop(){}

void onStrobe() {
  
//  char cc=getch();
  char cc=(digitalRead(Bseven)<<7)|(digitalRead(Bsix)<<6)|(digitalRead(Bfive)<<5)|(digitalRead(Bfour)<<4)|(digitalRead(Bthree)<<3)|(digitalRead(Btwo)<<2)|(digitalRead(Bone)<<1)|(digitalRead(Bzero));

  char c=cc&0x7f;
/*  if((cc&0x80)!=0)
  {
    line1="";
    line2="";
    cursorpos=0;
    writeWord(0,0,0,0,0);
    writeWord(0,0,0,0,1);    
  }*/
  if(c==1)
  {
    line1="";
    line2="";
    cursorpos=0;
    writeWord(0,0,0,0,0);
    writeWord(0,0,0,0,1);
  }
  else if (c==8 || c==0x7f)
  {
    if(cursorpos>=1 && cursorpos<=15)
    {
      int i=0;
      String line3="";
      while (line1[i+1]!=0)
        line3=line3+line1[i++];
      line1=line3;
      cursorpos--;

      writeWord(0,0,0,0,1);
      writeWord(0,0,0,0,0);
      writeChar(' ');
      writeWord(0,0,0,0,1);
      writeWord(0,0,0,0,0);
    }
    else if(cursorpos>=17)
    {
      int i=0;
      String line3="";
      while (line2[i+1]!=0)
        line3=line3+line2[i++];
      line2=line3;
      writeWord(0,0,0,0,1);
      writeWord(0,0,0,0,0);
      writeChar(' ');
      writeWord(0,0,0,0,1);
      writeWord(0,0,0,0,0);
      cursorpos--;      
    }
  }
  else if (c==0xd)
  {
      if(cursorpos>=16)
      {
      line1=line2;
      line2="";
      }
      writeWord(0,0,0,0,0);
      writeWord(0,0,0,0,1);
      int i=0;
      while (line1[i]!=0)
        writeChar(line1[i++]);
      writeWord(0,1,1,0,0);
      writeWord(0,0,0,0,0);
      cursorpos=16;
  }
  else if (c>=0x20 && c<=0x7e)
  {
    if(cursorpos>=16)
      line2=line2+c;
    else
      line1=line1+c;
    writeChar(c);
    cursorpos++;

    if(cursorpos==32)
    {
      writeWord(0,0,0,0,0);
      writeWord(0,0,0,0,1);
      line1=line2;
      line2="";
      int i=0;
      while (line1[i]!=0)
        writeChar(line1[i++]);
      writeWord(0,1,1,0,0);
      writeWord(0,0,0,0,0);
      cursorpos=16;
   }
   else if(cursorpos==16)
   {
      writeWord(0,1,1,0,0);
      writeWord(0,0,0,0,0);   
   }
  }

}

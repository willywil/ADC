//servo.c
#include "servo.h"
#define	SERVOL LATBbits.LATB0
#define SERVOR LATBbits.LATB1
unsigned int servo_time_val[3];
unsigned char count = 0;
void PwmOut(unsigned int x, unsigned char y)
{

if(y > 2) y = 0;
if(x > 250) x = 250;

servo_time_val[y] = 57536 + (x * 16);
}

void servo_isr(void)
{
if(INTCONbits.TMR0IF)//---------------------------------------------
{
T0CONbits.TMR0ON  = 0;
TMR0H = 0x63;
TMR0L = 0xC0;
TMR1H = 0xe8;
TMR1L = 0x90;
count = 0;
INTCONbits.TMR0IF = 0;

T0CONbits.TMR0ON  = 1;
}//------------------------------------------------------------


if(PIR1bits.TMR1IF == 1)//----------------------------------------------
{
T1CONbits.TMR1ON  = 0;
	count++;						//Increment Timer1 Interrupt Counter
		switch(count){				//Choose which servo to modify:
			case 1:     SERVOL = 1;
						SERVOR = 0;
						TMR1H = servo_time_val[0] >> 8 & 0x00ff;
						TMR1L = servo_time_val[0] & 0x00ff;
					//	TMR1H = 	servo_h;
					//	TMR1L = 	servo_l;
					//	TMR1H = 0xe8;     // preset for timer1 MSB register
					//	TMR1L = 0x90;

					break;
			case 2:		SERVOL = 0;
						SERVOR = 1;
						TMR1H = servo_time_val[1] >> 8 & 0x00ff;
						TMR1L = servo_time_val[1] & 0x00ff;
						break;
			case 3:		SERVOL = 0;
						SERVOR = 0;
						TMR1H = 0x00;
						TMR1L = 0x00;
					break;
	}

//TMR1H = 0xe8;     // preset for timer1 MSB register
//TMR1L = 0x90; 
PIR1bits.TMR1IF = 0;
T1CONbits.TMR1ON  = 1;
}//----------------------------------------------------------------------------------------------

}
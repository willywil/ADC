/*-----------------HEADERS---------------------------*/
#include <p18f46k80.h>
#include <usart.h>
#include "delay.h"
#include "servo.h"
#include "lcd.h"
/*----------------CONFIGBITS-----------------------*/
#pragma config FOSC = INTIO2
#pragma config MCLRE = ON
#pragma config WDTEN = OFF
#pragma config BOREN = OFF
#pragma config PLLCFG = ON

/*---------------DEFINES---------------------------*/
#define CALIBRATE	PORTDbits.RD0
#define LIVE_SENSOR	PORTDbits.RD1
#define BTN3	PORTDbits.RD2
#define BTN4	PORTDbits.RD3
/*---------------PROTOTYPES------------------------*/
void low_isr(void);
void high_isr(void);
void loop(void);
unsigned int adc_read(char ch);
void calibrate_sensors(void);
void live_sensors(void);

/*---------------VARIABLES-------------------------*/
unsigned int i = 0;
unsigned char z=0;
unsigned int ldr1_set = 0 , ldr2_set = 0;
unsigned int ldr3_set = 0 , ldr4_set = 0;
unsigned int ldr5_set = 0 , ldr6_set = 0;
unsigned int ldr1 = 0 , ldr2 = 0;
unsigned int ldr3 = 0 , ldr4 = 0; 
unsigned int ldr5 = 0 , ldr6 = 0;
unsigned char ldr1_d = 0, ldr2_d = 0;
unsigned char ldr3_d = 0, ldr4_d = 0;
unsigned char ldr5_d = 0, ldr6_d = 0;
/*--------------------ISR------------------------------------------*/
#pragma code high_vector=0x08
 
void high_interrupt(void) {_asm GOTO high_isr _endasm}

#pragma code low_vector=0x18 

void low_interrupt(void) { _asm GOTO low_isr _endasm}

#pragma code 

#pragma interrupt high_isr
void high_isr(void)
 {
servo_isr();
}

#pragma interrupt low_isr
void low_isr(void)
 {

}
/*----------------------MAIN--------------------------------------------------*/
void main(void) {
	OSCCON = 0b01110000;
	OSCTUNEbits.PLLEN = 1;
	ADCON0 = 1;
	ADCON1 = 0b00110000;
	ADCON2 = 0b10010110;
	ANCON0 = 0b00111111;
	ANCON1 = 0;
    TRISA = 0b00101111;
    TRISB = 0b00000000;
    TRISC = 0b00000000;
	TRISD = 0b00001111;
	TRISE = 0b00000001;
		
	LATB = 0;
	INTCON = 0b11100000;
	INTCON2 = 0b00000100;
	PIE1 = 0b0000001;
	IPR1 = 0b0000001;
////---------------------------- 20 ms @16 mips
	TMR0H = 0x63;
	TMR0L = 0xC0;
	T0CON = 0b10000010;
////-----------------------------1.5ms @ 16 mips 
	TMR1H = 0xE8;     //E8 preset for timer1 MSB register
	TMR1L = 0x90;     //90 preset for timer1 LSB register
	T1CON = 0b00101101;

////-----------------------------Usart 9600 baud
	TXSTA1 = 0b10100010;
	RCSTA1 = 152;
	BAUDCON1 = 0b01000000;
	SPBRG1 = 103;
//-----------------------------
	ldr1_set = eeprom_getldr(1);
	ldr2_set = eeprom_getldr(3);
	ldr3_set = eeprom_getldr(5);
	ldr4_set = eeprom_getldr(7);
	ldr5_set = eeprom_getldr(9);
	ldr6_set = eeprom_getldr(11);

	delay_ms(100);
	lcd_init();
	loop();
}

/*---------------------LOOP---------------------------------------------------------*/
void loop(void)
{

lcd_clear();
lcd_goto(0);
lcd_puts("Line Bot");
PwmOut(125,0);
PwmOut(125,1);
	if(!BTN3) 
	{
	
	lcd_clear();
lcd_goto(0);
lcd_dec(ldr1_set,4);
lcd_putch(' ');
lcd_dec(ldr2_set,4);
lcd_putch(' ');
lcd_dec(ldr3_set,4);
lcd_goto(64);
lcd_dec(ldr4_set,4);
lcd_putch(' ');
lcd_dec(ldr5_set,4);
lcd_putch(' ');
lcd_dec(ldr6_set,4);
while(1);
	
	}
	if(!CALIBRATE) 		calibrate_sensors();//button pressed for calibration
	if(!LIVE_SENSOR) 	live_sensors(); //button pressed for live sensor data
	
	while (1) 			// creates infinite loop 
	{

//PwmOut(85,0);// right track
//PwmOut(165,1);// left track
PwmOut(125,0);
PwmOut(125,1);

	if(adc_read(1) > ldr2_set) ldr2_d = 0;
	else						ldr2_d = 1;
	delay_ms(50);
	if(adc_read(2) > ldr3_set) ldr3_d = 0;
	else 						ldr3_d = 1;
	delay_ms(50);
	if(adc_read(3) > ldr4_set) ldr4_d = 0;
	else 						ldr4_d = 1;
	delay_ms(50);
	if(adc_read(4) > ldr5_set) ldr5_d = 0;
	else 						ldr5_d = 1;

	lcd_clear();
lcd_goto(0);
lcd_dec(ldr2_d,1);
lcd_putch(' ');
lcd_dec(ldr3_d,1);
lcd_putch(' ');
lcd_dec(ldr4_d,1);
lcd_putch(' ');
lcd_dec(ldr5_d,1);


	}}

/*--------------------FUNCTIONS-------------------------------*/

unsigned int adc_read(char ch)
{	unsigned int delayan = 0;
	ADCON0bits.CHS = ch;
	ADCON0bits.GO = 1;//Start A/D Conversion
	while(ADCON0bits.GO != 0);//Loop here until A/D conversion completes
	delayan = ADRESH;//Set the delay to the 8 MSB
	return (delayan<< 8) + ADRESL;
}

void calibrate_sensors(void)
{
lcd_goto(0);
lcd_puts("Place Sensors on");
lcd_goto(64);
lcd_puts("black surface 5");
delay_ms(1000);
lcd_goto(78);
lcd_puts("4");
delay_ms(1000);
lcd_goto(78);
lcd_puts("3");
delay_ms(1000);
lcd_goto(78);
lcd_puts("2");
delay_ms(1000);
lcd_goto(78);
lcd_puts("1");
delay_ms(1000);
	ldr1 = adc_read(0);
	delay_ms(50);
	ldr2 = adc_read(1);
	delay_ms(50);
	ldr3 =  adc_read(2);
	delay_ms(50);
	ldr4 =  adc_read(3);
	delay_ms(50);
	ldr5 =  adc_read(4);
	delay_ms(50);
	ldr6 =  adc_read(5);
	delay_ms(50);
lcd_goto(64);
lcd_puts("VALUES SAVED!");
delay_ms(3000);

lcd_goto(0);
lcd_puts("Place Sensors on");
lcd_goto(64);
lcd_puts("white surface 5");
delay_ms(1000);
lcd_goto(78);
lcd_puts("4");
delay_ms(1000);
lcd_goto(78);
lcd_puts("3");
delay_ms(1000);
lcd_goto(78);
lcd_puts("2");
delay_ms(1000);
lcd_goto(78);
lcd_puts("1");
delay_ms(1000);
	ldr1 = ldr1 + adc_read(0);
	delay_ms(50);
	ldr2 = ldr2 + adc_read(1);
	delay_ms(50);
	ldr3 =  ldr3 + adc_read(2);
	delay_ms(50);
	ldr4 =  ldr4 + adc_read(3);
	delay_ms(50);
	ldr5 =  ldr5 + adc_read(4);
	delay_ms(50);
	ldr6 =  ldr6 + adc_read(5);
	delay_ms(50);
lcd_goto(64);
lcd_puts("VALUES SAVED!");
delay_ms(3000);
ldr1 = ldr1/2;
ldr2 = ldr2/2;
ldr3 = ldr3/2;
ldr4 = ldr4/2;
ldr5 = ldr5/2;
ldr6 = ldr6/2;


lcd_clear();
lcd_goto(0);
lcd_dec(ldr1,4);
lcd_putch(' ');
lcd_dec(ldr2,4);
lcd_putch(' ');
lcd_dec(ldr3,4);
lcd_goto(64);
lcd_dec(ldr4,4);
lcd_putch(' ');
lcd_dec(ldr5,4);
lcd_putch(' ');
lcd_dec(ldr6,4);
eeprom_saveldr(ldr1,1);
eeprom_saveldr(ldr2,3);
eeprom_saveldr(ldr3,5);
eeprom_saveldr(ldr4,7);
eeprom_saveldr(ldr5,9);
eeprom_saveldr(ldr6,11);

//delay_ms(8000);
while(1);
}

void live_sensors(void)
{
while(1)
{
	ldr1 = adc_read(0);
	delay_ms(50);
	ldr2 = adc_read(1);
	delay_ms(50);
	ldr3 =  adc_read(2);
	delay_ms(50);
	ldr4 =  adc_read(3);
	delay_ms(50);
	ldr5 =  adc_read(4);
	delay_ms(50);
	ldr6 =  adc_read(5);
	delay_ms(50);
lcd_clear();
lcd_goto(0);
lcd_dec(ldr1,4);
lcd_putch(' ');
lcd_dec(ldr2,4);
lcd_putch(' ');
lcd_dec(ldr3,4);
lcd_goto(64);
lcd_dec(ldr4,4);
lcd_putch(' ');
lcd_dec(ldr5,4);
lcd_putch(' ');
lcd_dec(ldr6,4);
delay_ms(1000);
}
}








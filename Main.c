/*
 * File:   Main.c
 * Author: jon
 * Basic ADC
 * Created on February 24, 2018, 6:26 PM
 */


#include <xc.h>
#include "usart.h"
/*----------------CONFIGBITS--------------------------------------------------*/
#pragma config FOSC = INTIO2
#pragma config MCLRE = ON
#pragma config WDTEN = OFF
#pragma config BOREN = OFF
#pragma config PLLCFG = ON
#pragma config XINST  = OFF



void putS(char* t);
void putNum(unsigned int n);
unsigned int adc_read(char ch);
unsigned int delayan = 0;
void main(void) {
    OSCCON = 0b01110000;
	OSCTUNEbits.PLLEN = 1;
	ADCON0 = 1;
	ADCON1 = 0b00011000; //bit 5-4 internal Vref 4.1v
	ADCON2 = 0b10010110;
	ANCON0 = 0b00000001; //Enable ADC
	ANCON1 = 0;
    TRISA  = 0b00000001;
    TRISB  = 0b00000000;
    TRISC  = 0b00000000;
    TRISD  = 0b00000000;
    TRISE  = 0b00000000;
    
//        INTCON = 0b11000000;
//        INTCONbits.INT0IE = 1;
//        INTCON3bits.INT1IE = 1;
//        INTCON3bits.INT1IP = 1;
//        TRISA = 0b00000000;
//        TRISB = 0b00000011;
//        TRISC = 0b10000000;
//        TRISDbits.TRISD1 = 0;
//        TRISE = 0b00000010;
//	LATB = 0;
//-----------------------------Usart 9600 baud----------------------------------
	TXSTA1 = 0b10100010;
	RCSTA1 = 152;
	BAUDCON1 = 0b01000000;
	SPBRG1 = 103;
    //TXSTA2 = 0b10100010;
	//RCSTA2 = 152;
	//BAUDCON2 = 0b01000000;
	//SPBRG2 = 103;
//------------------------------------------------------------------------------
    char value[] = "24";
    unsigned int adc = 0;
    unsigned int adcChannel = 0;
    float VoltCon = 0.0; //Voltage output
    float voltMath = 0.0; //Averaged ADC value
    float MaxVolt = 2.0; //Referenced Voltage
    int adcResolution = 4095;
    
    while(1)
        
    {
        for (int i = 1; i < 10001; i++){
        adc = adc_read(adcChannel);
        voltMath = voltMath + adc;
        }
        voltMath = voltMath /10000;
        
        VoltCon = (MaxVolt*voltMath)/adcResolution;
        //VoltCon = (MaxVolt*adc)/adcResolution;
        
        //VoltCon = (MaxVolt/4096)*voltMath;
        _delay(16000); //1 sec delay
        printf("\nMaxVolt: %4.5f", MaxVolt);
        printf("\nADC: %4.5f", voltMath);
        printf("\nVolts: %4.5f\n", VoltCon);
        printf("Adc: %d\n",adc);
        _delay(5000000); //1 sec delay
    }
    return;
}
unsigned int adc_read(char ch)
{	
    
	ADCON0bits.CHS = ch; //Select adc channel
	ADCON0bits.GO = 1;//Start A/D Conversion
    __delay_ms(1);
	while(ADCON0bits.GO != 0);//Loop here until A/D conversion completes
	//delayan = ADRES;
    //delayan = ADRESH;//Set the delay to the 8 MSB
    //delayan = (delayan<< 8) + (ADRESL & 0b11111100); //Return all 12 bits of the adc
	//return (delayan<< 8)+ ADRESL;
    
    delayan = (ADRESH << 8) + ADRESL;
    return delayan;
}
void putNum(unsigned int n)
{
    unsigned char str[5]={0,0,0,0,0};
	unsigned char temp12345;
	unsigned int j=0;
	unsigned char i=4;
	while(n)
	{
	str[i]=n%10;
	n=n/10;
	i--;
	}
//	if(field_length==-1)
//		while(str[j]==0) j++;
//	else
//		j=5-field_length;

	if(n<0) putS("-");
	for(i=j;i<5;i++)
	{
	temp12345=48+str[i];

	putch(temp12345);
	}
    printf("hell");
}
void putS(char* t)
{
    while(*t > 0)
    {
        putch(*t++);
    }
}
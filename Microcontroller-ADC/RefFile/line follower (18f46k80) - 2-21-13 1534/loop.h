//setup_isr.h
#ifndef __SETUP_ISR_H
#define __SETUP_ISR_H
/*-----------------HEADERS---------------------------*/
#include<p18cxxx.h>

/*----------------CONFIGBITS-----------------------*/
#pragma config FOSC = INTIO2
#pragma config MCLRE = ON
#pragma config WDTEN = OFF
#pragma config BOREN = OFF
#pragma config PLLCFG = ON

/*---------------PROTOTYPES------------------------*/
void low_isr(void);
void high_isr(void);



#endif
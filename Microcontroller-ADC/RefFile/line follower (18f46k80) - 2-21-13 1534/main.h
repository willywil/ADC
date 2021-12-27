//main.h
#ifndef __MAIN_H
#define __MAIN_H
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

#endif
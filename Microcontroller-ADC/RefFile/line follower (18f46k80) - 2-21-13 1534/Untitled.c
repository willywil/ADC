//eeprom.h
#ifndef __EEPROM_H
#define __EEPROM_H
#include<p18cxxx.h>
void EEPROM_Write(unsigned char address, unsigned char data);
unsigned char EEPROM_Read(unsigned char address);

#endif
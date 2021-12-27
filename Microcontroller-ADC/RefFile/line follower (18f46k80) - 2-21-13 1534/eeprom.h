//eeprom.h
#ifndef __EEPROM_H
#define __EEPROM_H
#include<p18cxxx.h>
void eeprom_write(unsigned char address, unsigned char data);
unsigned char eeprom_read(unsigned char address);

#endif
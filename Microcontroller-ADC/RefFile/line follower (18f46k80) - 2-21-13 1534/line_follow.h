//line_follow.h
#ifndef __LINE_FOLLOW_H
#define __LINE_FOLLOW_H
#include "eeprom.h"
void eeprom_saveldr(unsigned int ldr, unsigned char adr);
unsigned int eeprom_getldr(unsigned char adr);
#endif
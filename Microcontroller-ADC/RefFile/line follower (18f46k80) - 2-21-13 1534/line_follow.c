//line_follow.c
#include "line_follow.h"

void eeprom_saveldr(unsigned int ldr, unsigned char adr)
{
eeprom_write(adr,ldr & 0x00ff);
eeprom_write(adr + 1,(ldr>>8) & 0x00ff);
}

unsigned int eeprom_getldr(unsigned char adr)
{ unsigned int temp = 0;
	temp = eeprom_read(adr + 1);
		

return (temp<<8) + eeprom_read(adr);
}
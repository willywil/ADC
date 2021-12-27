//lcd.c
#include<p18cxxx.h>
#include "delay.h"
#include "lcd.h"

void lcd_write(unsigned char c)
{
	#if defined(DATA_UPPER)
	LCD_DATA=(LCD_DATA&0x0F)|(c&0xF0);
	LCD_STROBE();
	LCD_DATA=(LCD_DATA&0x0F)|((c<<4)&0xF0);
	#else
	LCD_DATA=(LCD_DATA&0xF0)|((c>>4)&0x0F);
	LCD_STROBE();
	LCD_DATA=(LCD_DATA&0xF0)|(c&0x0F);
//	LCD_DATA = ((c>>4) & 0x0F);
//	LCD_STROBE();
//	LCD_DATA = (c & 0x0F);
	#endif
	LCD_STROBE();
	delay_us(200);
}

void lcd_clear(void)
{	LCD_RS = 0;
	lcd_write(0x01);
	delay_ms(5);
}

/*write a string of chars to the LCD*/
void lcd_puts(rom  char *s)
{	LCD_RS = 1;		//write characters
	while(*s)
		lcd_write(*s++);
}

/*write a single char to the LCD*/
void lcd_putch(unsigned char c)
{	LCD_RS = 1;		//write characters
	lcd_write(c);
}

void lcd_byte(unsigned char c)
{	unsigned int j;
	LCD_RS = 1;		//write characters
	for (j=8; j >0; j--)
	{	lcd_putch(testbit(c, j-1)+number);		//display bit count on LCD
		delay_ms(5);				//delay 250 ms to see the count
	}
}

/*Go to the specified position*/
void lcd_goto(unsigned char pos)
{	LCD_RS = 0;		//
	lcd_write(0x80+pos);
}

void 	lcd_init( void)
{	
	LCD_RS = 0; LCD_EN = 0;
	lcd_write(0x03);  
	delay_ms(10);		//15 ms
	lcd_write(0x03);  
	delay_ms(10);	
	lcd_write(0x03);  
	delay_ms(10);	
	lcd_write(0x02);  
	delay_ms(10);	
	lcd_write(0x28);		//set interface length
	delay_ms(10);
	lcd_write(0x0C);		// Cursor Blink(0x0f), cursor off(0x0c)
	lcd_clear();		//clear screen
	delay_ms(10);
	lcd_write(0x06);		//set entry mode
		
}
void lcd_dec(unsigned int val,unsigned int field_length)
{
	unsigned char str[5]={0,0,0,0,0};
	unsigned char temp12345;
	unsigned int j=0;
	unsigned char i=4;
	while(val)
	{
	str[i]=val%10;
	val=val/10;
	i--;
	}
	if(field_length==-1)
		while(str[j]==0) j++;
	else
		j=5-field_length;

	if(val<0) lcd_puts("-");
	for(i=j;i<5;i++)
	{
	temp12345=48+str[i];

	lcd_putch(temp12345);
	}
}
/* LCD config.h file
2 line lcd
line one 0 - 15
line two 64 - 79

4 line lcd
line one 0 - 15

*/
#define 	LCD_RS		LATBbits.LATB2	//pin b4
#define 	LCD_EN		LATBbits.LATB3 //pin b5
#define 	LCD_DATA		LATB //D7-D4
#define 	DATA_UPPER		
		
#define 	LCD_STROBE()	((LCD_EN = 1), (LCD_EN = 0))
#define 	number		0x30
#define testbit(data,bitno) 	((data>>bitno)&0x01)

/*write a byte to the LCD in 4-bit mode */
void lcd_write(unsigned char);

/*Clear and home the LCD */
void lcd_clear(void);

/*write a string of characters to the LCD */
void lcd_puts(rom  char *s);

/*Go to the specified position */

void lcd_goto(unsigned char pos);

/*initialize the LCD - call before anything else */
void lcd_init(void);

/*write a character to the LCD */
void lcd_putch(unsigned char );

/*write a byte to the LCD */
void lcd_byte(unsigned char c);

/*write a Decimal number to the LCD */
void lcd_dec(unsigned int val,unsigned int field_length);



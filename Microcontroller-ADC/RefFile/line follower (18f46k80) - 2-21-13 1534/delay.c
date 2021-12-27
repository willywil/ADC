//delay.c
#include "delay.h"

/* delay_ms(); set to delay for a given amount of milliseconds */
void delay_ms(unsigned int delay)
	{

    int cp = 0;
    for (cp = 0; cp < delay; cp++) {
        Delay1KTCYx(16);
    }
}

/* delay_us(); set to delay for a given amount of microseconds
 * due to function overhead 5us is added to the total delay time
 * use Nop(); for delays under 6us
 */
void delay_us(unsigned int delay)
	{
	delay = delay - 5;
    while(delay) delay--;
	}
/*

CoffeeBaT-FX (CBT-FX)

Very simple sound effect """""Driver""""" by Coffee Bat

...And as the name implies it is very close to CBT to make the sfx...

Also thanks to bbbbbr for getting my code to ACTUALLY work

*/
#pragma bank 5
#include <gb/gb.h>
#include "cbtfx.h"
#include "Music.h"

// Don't forget to include your music driver here if you're gonna use it!
// For hUGEdriver
#define MUSIC_DRIVER_CH2_ON hUGE_mute_channel(HT_CH2, 0);
#define MUSIC_DRIVER_CH2_OFF hUGE_mute_channel(HT_CH2, 1);
#define MUSIC_DRIVER_CH4_ON hUGE_mute_channel(HT_CH4, 0);
#define MUSIC_DRIVER_CH4_OFF hUGE_mute_channel(HT_CH4, 1);

const unsigned char CBTFX_HEADER[] = "CBT-FX BY COFFEEBAT 2021";
const uint8_t * CBTFX_pointer;
uint8_t CBTFX_size = 0;
uint8_t CBTFX_repeater = 0;
uint8_t CBTFX_panning = 0;
uint8_t CBTFX_priority = 0;
uint8_t CBTFX_ch_used = 0;

//Restart values and point to the new sfx
void CBTFX_init(const unsigned char * SFX, uint8_t length, uint8_t priority, uint8_t ch_used) BANKED {
    if (priority < CBTFX_priority) return;
    CBTFX_priority = priority;
    CBTFX_ch_used = ch_used;
    CBTFX_pointer = SFX;
    CBTFX_size = length;
    CBTFX_repeater = 0;
    CBTFX_panning = NR51_REG;
    MUSIC_DRIVER_CH2_OFF
    MUSIC_DRIVER_CH4_OFF
}

void CBTFX_update(void) BANKED {
    if (CBTFX_size != 0){

        NR51_REG = CBTFX_panning;

    	if(CBTFX_repeater != 0){
    		CBTFX_repeater--;
    	}else{

        	CBTFX_repeater = *CBTFX_pointer++;

            NR51_REG |= *CBTFX_pointer++;

            if (CBTFX_ch_used & 0xF0){
                NR21_REG = *CBTFX_pointer++;
                NR22_REG = *CBTFX_pointer & 0xF0;
            }else CBTFX_pointer++;

            if (CBTFX_ch_used & 0x0F){
                NR42_REG = (*CBTFX_pointer & 0x0F) << 4;
            }

            CBTFX_pointer++;
            if (CBTFX_ch_used & 0xF0){
                NR23_REG = *CBTFX_pointer++;
                NR24_REG = *CBTFX_pointer++;
            }else CBTFX_pointer += 2;

            if (CBTFX_ch_used & 0x0F){
                NR41_REG = *CBTFX_pointer++;
                NR43_REG = *CBTFX_pointer++;
                NR44_REG = *CBTFX_pointer++;
            }else CBTFX_pointer += 3;

            CBTFX_size--;

            CBTFX_panning = NR51_REG;

            if(CBTFX_size == 0){
                CBTFX_priority = NR21_REG = NR22_REG = NR23_REG = NR24_REG = NR41_REG = NR42_REG = NR43_REG = NR44_REG = 0;
                NR51_REG |= 0b10101010;
                MUSIC_DRIVER_CH2_ON
                MUSIC_DRIVER_CH4_ON
            }          

        }
    }
}

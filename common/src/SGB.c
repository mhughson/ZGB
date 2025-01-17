#include "SGB.h"

#include <gb/gb.h>
#include <stdint.h>
#include <gb/sgb.h>
#include <string.h>
#include "BankManager.h"


#define SGB_CHR_BLOCK0 0
#define SGB_CHR_BLOCK1 1

#define SGB_SCR_FREEZE 1
#define SGB_SCR_UNFREEZE 0

#define SGB_TRANSFER(A,B) map_buf[0]=(A),map_buf[1]=(B),sgb_transfer(map_buf) 

void set_sgb_border(unsigned char * tiledata, size_t tiledata_size,
                    unsigned char * tilemap, size_t tilemap_size,
                    unsigned char * palette, size_t palette_size) {
    if (sgb_check()) {
        unsigned char map_buf[20];
        memset(map_buf, 0, sizeof(map_buf));

        SGB_TRANSFER((SGB_MASK_EN << 3) | 1, SGB_SCR_FREEZE); 

        BGP_REG = OBP0_REG = OBP1_REG = 0xE4U;
        SCX_REG = SCY_REG = 0U;

        uint8_t tmp_lcdc = LCDC_REG;

        HIDE_SPRITES, HIDE_WIN, SHOW_BKG;
        DISPLAY_ON;
        // prepare tilemap for SGB_BORDER_CHR_TRN (should display all 256 tiles)
        uint8_t i = 0U;
        for (uint8_t y = 0; y != 14U; ++y) {
            uint8_t * dout = map_buf;
            for (uint8_t x = 0U; x != 20U; ++x) {
                *dout++ = i++;
            }
            set_bkg_tiles(0, y, 20, 1, map_buf);
        }
        memset(map_buf, 0, sizeof(map_buf));

        // transfer tile data
        uint8_t ntiles = (tiledata_size > 256 * 32) ? 0 : tiledata_size >> 5;
        if ((!ntiles) || (ntiles > 128U)) { 
            set_bkg_data(0, 0, tiledata); 
            SGB_TRANSFER((SGB_CHR_TRN << 3) | 1, SGB_CHR_BLOCK0);
            if (ntiles) ntiles -= 128U; 
            tiledata += (128 * 32);
            set_bkg_data(0, ntiles << 1, tiledata); 
            SGB_TRANSFER((SGB_CHR_TRN << 3) | 1, SGB_CHR_BLOCK1);
        } else { 
            set_bkg_data(0, ntiles << 1, tiledata); 
            SGB_TRANSFER((SGB_CHR_TRN << 3) | 1, SGB_CHR_BLOCK0);
        }

        // transfer map and palettes
        set_bkg_data(0, (uint8_t)(tilemap_size >> 4), tilemap);
        set_bkg_data(128, (uint8_t)(palette_size >> 4), palette);
        SGB_TRANSFER((SGB_PCT_TRN << 3) | 1, 0);

        LCDC_REG = tmp_lcdc;

        // Ensure that Tile 0 is an empty square. It won't be by default.
        // Reusing map_buf.
        memset(map_buf, 0, sizeof(map_buf));
        set_bkg_data(0, 1, map_buf);

        // clear SCREEN
        fill_bkg_rect(0, 0, 20, 18, 0);
        
        SGB_TRANSFER((SGB_MASK_EN << 3) | 1, SGB_SCR_UNFREEZE); 

        // Give it time to clear the whole screen, and avoid only part of it appearing blank.
        for (UINT8 i = 2; i != 0; i--) {
		    wait_vbl_done();
	    }
    }
}

void LoadSGBBorder(UINT8 map_bank, struct MapInfo* map) {
	PUSH_BANK(map_bank);
	set_sgb_border(map->tiles->data, map->tiles->num_frames << 5, map->data, 1792, map->tiles->pals, map->tiles->num_pals << 5);
	POP_BANK;
}
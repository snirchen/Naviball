var powerup_ID;

powerup_ID = argument0; 

global.powerup_life_state[powerup_ID]  = e_powerup_life_state.PL_IDLE;
global.powerup_state[powerup_ID]       = powerup_state.LOAD_TIME;
global.powerup_active[powerup_ID]      = false;
global.led_mode[powerup_ID]            = led_mode.STABLE;
global.f_image_alpha_up[powerup_ID]    = 0;
image_alpha = 1;


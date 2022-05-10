var strike_loc;

strike_loc = argument0; 


switch(strike_loc)
{
//--------------------------------------------------------
    case e_strike_loc.UPPER:
        global.last_rand_spike[e_dim.X] = 150 + irandom(SCREEN_WIDTH-(2*195));
        global.last_rand_spike[e_dim.Y] = 60;
        break;
//--------------------------------------------------------
    case e_strike_loc.LOWER:
        global.last_rand_spike[e_dim.X] = 150 + irandom(SCREEN_WIDTH-(2*195));
        global.last_rand_spike[e_dim.Y] = (SCREEN_HEIGHT+1-200);
        break;
//--------------------------------------------------------
    case e_strike_loc.LEFT:
        global.last_rand_spike[e_dim.X] = 51;
        global.last_rand_spike[e_dim.Y] = 240 + irandom(SCREEN_HEIGHT-(2*285));
        break;
//--------------------------------------------------------
    case e_strike_loc.RIGHT:
        global.last_rand_spike[e_dim.X]  = (SCREEN_WIDTH+1-53);
        global.last_rand_spike[e_dim.Y]  = 240 + irandom(SCREEN_HEIGHT-(2*285));
        break;
//--------------------------------------------------------
    default:  
        nop(); 
        break;
//--------------------------------------------------------    
}

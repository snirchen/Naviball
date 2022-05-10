var strike_loc;

strike_loc = argument0; 

if (image_alpha < 1 && global.spikes_harmful == true)
{
    image_alpha += 0.03;
}

if(instance_exists(obj_spikes))
{
    image_alpha = obj_spikes.image_alpha;
}

if (global.CaughtGems % MAX_STAGE_SCORE_SPIKES == 0 && global.one_time_spikes_create[strike_loc] == 0 && global.CaughtGems != 0 && global.f_can_change_spikes_place = 1) 
{    
    global.f_can_change_spikes_place = 0;
    global.one_time_spikes_create[strike_loc] = 1;
    global.spikes_fade_out_time = TimeBeforeDestroy(SPIKES_MOVE_TIME); 
    global.ready_for_spikes_create = 1;
    global.move_back = true;  
    global.spikes_destroyed = 0;
}

if (global.move == true)
{
    switch(strike_loc)
    {
    case e_strike_loc.UPPER:
        vspeed = SPIKES_MOVE_SPEED;
        break; 
    //----------------------------------------
    case e_strike_loc.LOWER:
        vspeed = -SPIKES_MOVE_SPEED;
        break; 
    //----------------------------------------
    case e_strike_loc.RIGHT:
        hspeed = -SPIKES_MOVE_SPEED;
        break; 
    //----------------------------------------
    case e_strike_loc.LEFT:
        hspeed = SPIKES_MOVE_SPEED;
        break; 
    //----------------------------------------
    default:
        nop();
        break; 
    //----------------------------------------
    }
}
else if (global.move_back == true)
{
    switch(strike_loc)
    {
    case e_strike_loc.UPPER:
        vspeed = -SPIKES_MOVE_SPEED;
        break; 
    //----------------------------------------
    case e_strike_loc.LOWER:
        vspeed = SPIKES_MOVE_SPEED;
        break; 
    //----------------------------------------
    case e_strike_loc.RIGHT:
        hspeed = SPIKES_MOVE_SPEED;
        break; 
    //----------------------------------------
    case e_strike_loc.LEFT:
        hspeed = -SPIKES_MOVE_SPEED; 
        break; 
    //----------------------------------------
    default:
        nop();
        break; 
    //----------------------------------------
    }
}
else
{ 
vspeed = 0;
hspeed = 0;
}

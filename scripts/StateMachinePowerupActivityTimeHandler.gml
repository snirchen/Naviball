var powerup_ID;

powerup_ID = argument0; 
//////////////////////////////////////////////////////////////////////////////////////////////////
switch(global.powerup_life_state[powerup_ID])
{
//--------- 
case e_powerup_life_state.PL_IDLE:
    nop();
    break;
//--------- 
case e_powerup_life_state.LOAD_TIME:
    global.powerup_required_time[powerup_ID] = CalculateRequiredTime(10000);
    global.powerup_life_state[powerup_ID] = e_powerup_life_state.WAIT_FOR_END;
    break;
//---------    
case e_powerup_life_state.WAIT_FOR_END:
    if(TimeHasCome(global.powerup_required_time[powerup_ID]))
    {
        global.powerup_life_state[powerup_ID] = e_powerup_life_state.PL_IDLE;
        global.powerup_active[powerup_ID]     = false;
    }
    break;
//---------    
default:
    nop();
    break;
//--------- 
}


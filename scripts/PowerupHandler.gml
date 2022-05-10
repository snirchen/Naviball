/*Description - this function has the following steps :
1.the powerup stays stable for 7 sec
2.the powerup blinks for 3 sec
3.the powerup is destroyed
//////////////////////////////////////////////////////////////////////////////////////////////////*/
var powerup_ID;

powerup_ID = argument0;
//////////////////////////////////////////////////////////////////////////////////////////////////
switch(global.powerup_state[powerup_ID])
{
//---------
case powerup_state.PU_IDLE:
    nop();
    break;
//---------    
case powerup_state.LOAD_TIME:
    global.pu_required_time[powerup_ID] = CalculateRequiredTime(7000);
    global.powerup_state[powerup_ID]    = powerup_state.WAIT_FOR_END;
    global.led_mode[powerup_ID]         = led_mode.STABLE;
    break;
//---------    
case powerup_state.WAIT_FOR_END:
    if(TimeHasCome(global.pu_required_time[powerup_ID]))
    {
        global.powerup_state[powerup_ID] = powerup_state.START_BLINKING;
    }
    break;
//---------    
case powerup_state.START_BLINKING:
    global.pu_required_time[powerup_ID] = CalculateRequiredTime(3000);
    global.powerup_state[powerup_ID]    = powerup_state.WAIT_FOR_BLINKING_END;
    global.led_mode[powerup_ID]         = led_mode.BLINK;
    break;
//---------    
case powerup_state.WAIT_FOR_BLINKING_END:
    if(TimeHasCome(global.pu_required_time[powerup_ID]))
    {
        global.powerup_state[powerup_ID] = powerup_state.PU_IDLE;
        global.led_mode[powerup_ID]      = led_mode.OFF;
        instance_destroy();
    }
    break;
//---------    
default:
    nop();
    break;
//--------- 
}


            




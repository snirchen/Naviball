switch(global.break_state)
{
//---------
case break_state.BS_IDLE:
    nop();
    break;
//---------    
case break_state.LOAD_TIME_BEFORE_BREAK:
    global.required_time = CalculateRequiredTime(400);
    global.break_state = break_state.WAIT_FOR_BREAK;
    break;
//---------    
case break_state.WAIT_FOR_BREAK:
    if(TimeHasCome(global.required_time))
    {
        global.die_state = break_state.BS_IDLE;
        instance_destroy(); // We have to destroy ONLY the spesific block.
        global.counter --;
    }
    break;
//---------    
default:
    nop();
    break;
//--------- 
}

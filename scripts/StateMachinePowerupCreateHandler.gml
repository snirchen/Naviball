// This function manages the powerups. every x sec , it starts another powerup

//////////////////////////////////////////////////////////////////////////////////////////////////
switch(global.powerup_create_state)
{
//---------    
case e_powerup_create_state.LOAD_TIME:
    global.powerup_create_time = CalculateRequiredTime(20000);
    global.powerup_create_state = e_powerup_create_state.WAIT_FOR_END;
    break;
//---------    
case e_powerup_create_state.WAIT_FOR_END:
    if(TimeHasCome(global.powerup_create_time))
    {
        global.powerup_create_state = e_powerup_life_state.LOAD_TIME;
        
        RandomizePoint();
        while(IsPointsCollision(global.last_rand_point[e_dim.X],global.last_rand_point[e_dim.Y]) == false) 
        {
            RandomizePoint();
            global.points_loc[global.cur_built_point,0] = global.last_rand_point[e_dim.X];
            global.points_loc[global.cur_built_point,1] = global.last_rand_point[e_dim.Y];  
        }
        
        cur_obj = global.powerup_obj[global.cur_powerup_id_ind];

        global.cur_powerup_id_ind ++;
        
        if(global.cur_powerup_id_ind >= e_powerup_ID.MAX_POWERUPS)
        {
           global.cur_powerup_id_ind = 0;
        }
        instance_create(global.last_rand_point[e_dim.X],global.last_rand_point[e_dim.Y],cur_obj);          

    }
    break;
//---------    
default:
    nop();
    break;
//--------- 
}


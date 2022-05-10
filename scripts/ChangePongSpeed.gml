if (((obj_pong.hspeed > (-1)*MAX_PONG_SPEED) && (obj_pong.hspeed < MAX_PONG_SPEED)) && ((obj_pong.vspeed > (-1)*MAX_PONG_SPEED) && (obj_pong.vspeed < MAX_PONG_SPEED)))
{
    if (obj_pong.hspeed>0)
    {
        obj_pong.hspeed +=PONG_SPEED_CHANGE;
    } 
    else
    {
       obj_pong.hspeed -=PONG_SPEED_CHANGE;
    }

    if (obj_pong.vspeed>0)
    {
       obj_pong.vspeed +=PONG_SPEED_CHANGE;
    } 
    else
    {
      obj_pong.vspeed -=PONG_SPEED_CHANGE;
    }
}

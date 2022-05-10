var powerup_ID;

powerup_ID = argument0; 

if(global.powerup_active[powerup_ID] == false)
{
    PowerupHandler(powerup_ID);
    LedHandler(powerup_ID);
}

if (global.die == true)
{
    instance_destroy()
}

var powerup_ID;

powerup_ID = argument0; 

StateMachinePowerupActivityTimeHandler(powerup_ID);

if (global.powerup_active[powerup_ID] == false)
{
    instance_destroy();
}
////////////////////////////////////////////////////////////////////////////////
if (place_meeting(x,y,obj_pong)) && (global.die == false)
{
    image_alpha = 0.5;
    if instance_exists(magnet_icon_obj)
    {
        magnet_icon_obj.image_alpha = 0.5;
    }
    if instance_exists(shield_icon_obj)
    {
        shield_icon_obj.image_alpha = 0.5;
    }
}
else if (global.die == false)
{
    image_alpha = 1;
    if instance_exists(magnet_icon_obj)
    {
        magnet_icon_obj.image_alpha = 1;
    }
    if instance_exists(shield_icon_obj)
    {
        shield_icon_obj.image_alpha = 1;
    }
    
}
////////////////////////////////////////////////////////////////////////////////
if (global.die == true)
{
    if (image_alpha > 0)
    {
        image_alpha -= 0.1
    }
    if instance_exists(magnet_icon_obj)
    {
        if (magnet_icon_obj.image_alpha > 0)
        {
            magnet_icon_obj.image_alpha -= 0.1;
        }
    }
    if instance_exists(shield_icon_obj)
    {
        if (shield_icon_obj.image_alpha > 0)
        {
            shield_icon_obj.image_alpha -= 0.1;
        }
    }
}

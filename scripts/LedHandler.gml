var powerup_ID;
powerup_ID = argument0;

switch(global.led_mode[powerup_ID])
{
case led_mode.STABLE:
    image_alpha      = 1;  
    global.f_image_alpha_up[powerup_ID] = 1;  
    break;
//----------------------    
case led_mode.BLINK:
    if(global.f_image_alpha_up[powerup_ID] == 1)
    {
        image_alpha += 0.05;
        if(image_alpha >= 1)
           global.f_image_alpha_up[powerup_ID] = 0;
    }
    else // if(f_image_alpha_up == 0)
    {
        image_alpha -= 0.05;
        if(image_alpha <= 0.5)
            global.f_image_alpha_up[powerup_ID] = 1;
    }
    break;
//----------------------       
case led_mode.OFF:
    global.f_image_alpha_up[powerup_ID] = 1; 
    image_alpha      = 0;    
    break;
//----------------------  
default:
    global.f_image_alpha_up[powerup_ID] = 1; 
    image_alpha      = 0;    
    break;
//----------------------  
}

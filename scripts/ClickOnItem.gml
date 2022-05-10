file = argument0;
type = argument1;
item_name = argument2;
price = argument3;

if(type == "ball")
{
    if (image_index == 0) && (global.total_gems >= price) && smoothview_can_press(obj_smoothview.drag_speed,obj_smoothview.limit) && (global.cant_scroll == 0) 
    {                    
        ini_open(file);
        global.total_gems -= price;
        ini_write_real('TotalGems','total_gems',global.total_gems);
        
        ini_write_string('Balls', item_name, "unlocked");
                
        global.selected_ball = item_name;
        ini_write_string('SelectedGadgets','selected_ball',global.selected_ball);
                     
        ini_close(); 
        InitShopItemsStatus();
        if (global.sound = 1)
        {
            audio_play_sound(win_in_the_roleta_sound_effect, 10, false);
        }
    }
    else if (image_index == 2) && smoothview_can_press(obj_smoothview.drag_speed,obj_smoothview.limit) && (global.cant_scroll == 0) 
    {
        ini_open (file);
        global.selected_ball = item_name;
        ini_write_string('SelectedGadgets','selected_ball',global.selected_ball);
        ini_close();
        InitShopItemsStatus();
        if (global.sound = 1)
        {
            audio_play_sound(choose_item_sound, 10, false);
        }
    }
    else if(image_index == 0) && smoothview_can_press(obj_smoothview.drag_speed,obj_smoothview.limit) && (global.cant_scroll == 0) 
    {
        instance_create(0,0,red_screen_obj); 
        if (global.sound = 1)
        {
            audio_play_sound(cant_buy, 10, false);
        }
    }
}
else if(type == "block")
{
    if (image_index == 0) && (global.total_gems >= price) && smoothview_can_press(obj_smoothview.drag_speed,obj_smoothview.limit) && (global.cant_scroll == 0) 
    {
        ini_open(file);
        
        global.total_gems -= price;
        ini_write_real('TotalGems','total_gems',global.total_gems);
        
        ini_write_string('Blocks', item_name, "unlocked");
                
        global.selected_block = item_name;
        ini_write_string('SelectedGadgets','selected_block',global.selected_block);
                     
        ini_close(); 
        InitShopItemsStatus();
        if (global.sound = 1)
        {
            audio_play_sound(win_in_the_roleta_sound_effect, 10, false);
        }
    }
    else if (image_index == 2) && smoothview_can_press(obj_smoothview.drag_speed,obj_smoothview.limit) && (global.cant_scroll == 0) 
    {
        ini_open (file);
        global.selected_block = item_name;
        ini_write_string('SelectedGadgets','selected_block',global.selected_block);
        ini_close();
        InitShopItemsStatus();
        if (global.sound = 1)
        {
            audio_play_sound(choose_item_sound, 10, false);
        }
    }
    else if(image_index == 0) && smoothview_can_press(obj_smoothview.drag_speed,obj_smoothview.limit) && (global.cant_scroll == 0) 
    {
        instance_create(0,0,red_screen_obj); 
        if (global.sound = 1)
        {
            audio_play_sound(cant_buy, 10, false);
        }
    }
}


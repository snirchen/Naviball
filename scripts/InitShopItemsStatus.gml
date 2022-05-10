ind = 0;

ItemTobuy_init(ind++, buy_default_ball_obj        , "default_ball"        , "locked", "Balls", 0);
ItemTobuy_init(ind++, buy_smiley_ball_obj         , "smiley_ball"         , "locked", "Balls", 50);
ItemTobuy_init(ind++, buy_snooker_ball_obj        , "snooker_ball"        , "locked", "Balls", 50);
ItemTobuy_init(ind++, buy_chrome_ball_obj         , "chrome_ball"         , "locked", "Balls", 75);
ItemTobuy_init(ind++, buy_cookie_ball_obj         , "cookie_ball"         , "locked", "Balls", 75);
ItemTobuy_init(ind++, buy_waffle_ball_obj         , "waffle_ball"         , "locked", "Balls", 75);
ItemTobuy_init(ind++, buy_earth_ball_obj          , "earth_ball"          , "locked", "Balls", 100);
ItemTobuy_init(ind++, buy_compass_ball_obj        , "compass_ball"        , "locked", "Balls", 100);
ItemTobuy_init(ind++, buy_iron_man_ball_obj       , "iron_man_ball"       , "locked", "Balls", 100);
ItemTobuy_init(ind++, buy_robot_ball_obj          , "robot_ball"          , "locked", "Balls", 125);
ItemTobuy_init(ind++,buy_ninja_ball_obj          , "ninja_ball"          , "locked", "Balls", 125);
ItemTobuy_init(ind++,buy_capitan_america_ball_obj, "capitan_america_ball", "locked", "Balls", 125);
ItemTobuy_init(ind++,buy_dounat_ball_obj         , "dounat_ball"         , "locked", "Balls", 150);
ItemTobuy_init(ind++,buy_shaman_one_ball_obj     , "shaman_one_ball"     , "locked", "Balls", 150);
ItemTobuy_init(ind++,buy_shaman_two_ball_obj     , "shaman_two_ball"     , "locked", "Balls", 150);
//--------------------------------------------------------------------------------------------

ItemTobuy_init(ind++,buy_default_block_obj        , "default_block"        , "locked", "Blocks", 0);
ItemTobuy_init(ind++,buy_smiley_block_obj         , "smiley_block"         , "locked", "Blocks", 50);
ItemTobuy_init(ind++,buy_snooker_block_obj        , "snooker_block"        , "locked", "Blocks", 50);
ItemTobuy_init(ind++,buy_chrome_block_obj         , "chrome_block"         , "locked", "Blocks", 75);
ItemTobuy_init(ind++,buy_cookie_block_obj         , "cookie_block"         , "locked", "Blocks", 75);
ItemTobuy_init(ind++,buy_waffle_block_obj         , "waffle_block"         , "locked", "Blocks", 75);
ItemTobuy_init(ind++,buy_earth_block_obj          , "earth_block"          , "locked", "Blocks", 100);
ItemTobuy_init(ind++,buy_compass_block_obj        , "compass_block"        , "locked", "Blocks", 100);
ItemTobuy_init(ind++,buy_iron_man_block_obj       , "iron_man_block"       , "locked", "Blocks", 100);
ItemTobuy_init(ind++,buy_robot_block_obj          , "robot_block"          , "locked", "Blocks", 125);
ItemTobuy_init(ind++,buy_ninja_block_obj          , "ninja_block"          , "locked", "Blocks", 125);
ItemTobuy_init(ind++,buy_capitan_america_block_obj, "capitan_america_block", "locked", "Blocks", 125);
ItemTobuy_init(ind++,buy_dounat_block_obj         , "dounat_block"         , "locked", "Blocks", 150);
ItemTobuy_init(ind++,buy_shaman_one_block_obj     , "shaman_one_block"     , "locked", "Blocks", 150);
ItemTobuy_init(ind++,buy_shaman_two_block_obj     , "shaman_two_block"     , "locked", "Blocks", 150);




if file_exists('pong_game_info.ini')
{
    ini_open ("pong_game_info.ini");  
    
    global.selected_ball = ini_read_string('SelectedGadgets','selected_ball',"default_ball");
    global.selected_block = ini_read_string('SelectedGadgets','selected_block',"default_block");
    
    
    for(i=0;i<array_height_2d(global.items);i++)
    {
        global.items[i,2] = ini_read_string(global.items[i,3], global.items[i,1], "locked");
    }
    ini_close();
}
else
{
    global.selected_ball = "default_ball";
    global.selected_block = "default_block";
}

for(z=0;z<array_height_2d(global.items);z++)
{
    if(instance_exists(global.items[z,0]))
    {
        if(global.items[z,2] == "unlocked")
        {
            global.items[z,0].image_index = 2;
        }
    }
}




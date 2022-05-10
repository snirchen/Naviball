ind = 0;

skins[ind,skins_characteristics.name] = "smiley_ball";
skins[ind++,skins_characteristics.spr] = smiley_ball_spr;

skins[ind,skins_characteristics.name] = "capitan_america_ball";
skins[ind++,skins_characteristics.spr] = capitan_america_ball_spr;

skins[ind,skins_characteristics.name] = "snooker_ball";
skins[ind++,skins_characteristics.spr] = snooker_ball_spr;

skins[ind,skins_characteristics.name] = "compass_ball";
skins[ind++,skins_characteristics.spr] = compass_ball_spr;

skins[ind,skins_characteristics.name] = "earth_ball";
skins[ind++,skins_characteristics.spr] = earth_ball_spr;

skins[ind,skins_characteristics.name] = "chrome_ball";
skins[ind++,skins_characteristics.spr] = chrome_ball_spr;

skins[ind,skins_characteristics.name] = "cookie_ball";
skins[ind++,skins_characteristics.spr] = cookie_ball_spr;

skins[ind,skins_characteristics.name] = "waffle_ball";
skins[ind++,skins_characteristics.spr] = waffle_ball_spr;

skins[ind,skins_characteristics.name] = "robot_ball";
skins[ind++,skins_characteristics.spr] = robot_ball_spr;

skins[ind,skins_characteristics.name] = "ninja_ball";
skins[ind++,skins_characteristics.spr] = ninja_ball_spr;

skins[ind,skins_characteristics.name] = "iron_man_ball";
skins[ind++,skins_characteristics.spr] = iron_man_ball_spr;

skins[ind,skins_characteristics.name] = "dounat_ball";
skins[ind++,skins_characteristics.spr] = dounat_ball_spr;

skins[ind,skins_characteristics.name] = "shaman_one_ball";
skins[ind++,skins_characteristics.spr] = shaman_one_ball_spr;

skins[ind,skins_characteristics.name] = "shaman_two_ball";
skins[ind++,skins_characteristics.spr] = shaman_two_ball_spr;

randomize();
InitShopItemsStatus();
item = random_range(1, 15);

ball_name = global.items[item,item_characteristics.name];

for(i=0; i < 14; i++)
{
    if(skins[i, skins_characteristics.name] == ball_name)
    {
        if(instance_exists(item_prize))
        {
            object_set_sprite(item_prize, skins[i, skins_characteristics.spr]);
            item_prize.sprite_index  = skins[i, skins_characteristics.spr];
            if (item_prize.image_number > 1)
            {
                item_prize.image_index++;
            }
        }
    }
}

if(DoesHaveItem(item))
{
    if file_exists('pong_game_info.ini')
    {
        ini_open("pong_game_info.ini");;
        global.selected_ball = global.items[item,item_characteristics.name];
        ini_write_string('SelectedGadgets','selected_ball',global.selected_ball); 
        ini_close(); 
        InitShopItemsStatus();
        /*
        ini_open ("pong_game_info.ini");
        global.total_gems += global.items[item,item_characteristics.price];
        ini_write_real('TotalGems','total_gems',global.total_gems);
        ini_close();
        */
    }
}
else
{
    //Get item
    ini_open("pong_game_info.ini");;
    ini_write_string('Balls', global.items[item,item_characteristics.name], "unlocked");
    global.selected_ball = global.items[item,item_characteristics.name];
    ini_write_string('SelectedGadgets','selected_ball',global.selected_ball); 
    ini_close(); 
    InitShopItemsStatus();
}



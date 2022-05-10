ind = 0;

skins[ind,skins_characteristics.name] = "snooker_block";
skins[ind++,skins_characteristics.spr] = snooker_block_spr;

skins[ind,skins_characteristics.name] = "smiley_block";
skins[ind++,skins_characteristics.spr] = smiley_block_spr;

skins[ind,skins_characteristics.name] = "chrome_block";
skins[ind++,skins_characteristics.spr] = chrome_block_spr;

skins[ind,skins_characteristics.name] = "dounat_block";
skins[ind++,skins_characteristics.spr] = dounat_block_spr;

skins[ind,skins_characteristics.name] = "capitan_america_block";
skins[ind++,skins_characteristics.spr] = capitan_america_block_spr;

skins[ind,skins_characteristics.name] = "earth_block";
skins[ind++,skins_characteristics.spr] = earth_block_spr;

skins[ind,skins_characteristics.name] = "iron_man_block";
skins[ind++,skins_characteristics.spr] = iron_man_block_spr;

skins[ind,skins_characteristics.name] = "ninja_block";
skins[ind++,skins_characteristics.spr] = ninja_block_spr;

skins[ind,skins_characteristics.name] = "robot_block";
skins[ind++,skins_characteristics.spr] = robot_block_spr;

skins[ind,skins_characteristics.name] = "cookie_block";
skins[ind++,skins_characteristics.spr] = cookie_block_spr;

skins[ind,skins_characteristics.name] = "compass_block";
skins[ind++,skins_characteristics.spr] = compass_block_spr;

skins[ind,skins_characteristics.name] = "waffle_block";
skins[ind++,skins_characteristics.spr] = waffle_block_spr;

skins[ind,skins_characteristics.name] = "shaman_one_block";
skins[ind++,skins_characteristics.spr] = shaman_one_block_spr;

skins[ind,skins_characteristics.name] = "shaman_two_block";
skins[ind++,skins_characteristics.spr] = shaman_two_block_spr;

ind = ind-2;

randomize();
InitShopItemsStatus();
item = random_range(16, 30);

block_name = global.items[item,item_characteristics.name];

for(i=0; i < 14; i++)
{
    if(skins[i, skins_characteristics.name] == block_name)
    {
        if(instance_exists(item_prize))
        {
            object_set_sprite(item_prize, skins[i, skins_characteristics.spr]);
            item_prize.sprite_index  = skins[i, skins_characteristics.spr];
        }
    }
}

if(DoesHaveItem(item))
{
    if file_exists('pong_game_info.ini')
    {
        ini_open("pong_game_info.ini");;
        global.selected_block = global.items[item,item_characteristics.name];
        ini_write_string('SelectedGadgets','selected_block',global.selected_block); 
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
    ini_write_string('Blocks', global.items[item,item_characteristics.name], "unlocked");
    global.selected_block = global.items[item,item_characteristics.name];
    ini_write_string('SelectedGadgets','selected_block',global.selected_block); 
    ini_close(); 
    InitShopItemsStatus();
}


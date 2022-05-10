ind = 0;

skins[ind,skins_characteristics.name] = "default_block";
skins[ind++,skins_characteristics.spr] = default_block_spr;

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

if file_exists('pong_game_info.ini')
{
    ini_open ("pong_game_info.ini");
    global.selected_block = ini_read_string('SelectedGadgets','selected_block',"default_block");
    ini_close();
}
else
{
    global.selected_block = "default_block";
}

for(i=0;i<array_height_2d(skins);i++)
{
    if(global.selected_block == skins[i,0])
    {
        object_set_sprite(obj_block, skins[i,1]);
        obj_block.sprite_index  = skins[i,1];
        break;
    }
}



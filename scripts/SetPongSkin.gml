enum skins_characteristics
{
    name = 0,
    spr = 1
}

ind = 0;

skins[ind,skins_characteristics.name] = "default_ball";
skins[ind++,skins_characteristics.spr] = default_ball_spr;

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

if file_exists('pong_game_info.ini')
{
    ini_open ("pong_game_info.ini");
    global.selected_ball = ini_read_string('SelectedGadgets','selected_ball',"default_ball");
    ini_close();
}
else
{
    global.selected_ball = "default_ball";
}

for(i=0; i<array_height_2d(skins); i++)
{
    if(global.selected_ball == skins[i,0])
    {
        object_set_sprite(obj_pong, skins[i,1]);
        obj_pong.sprite_index  = skins[i,1];
        break;
    }
}



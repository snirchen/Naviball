var point_x,point_y;

point_x = argument0; 
point_y = argument1; 

for(i=0;i<global.cur_built_point;i++)
{
    x1 = global.points_loc[i,0];
    y1 = global.points_loc[i,1];
    if(point_distance(x1,y1,point_x,point_y) <= 250)
    {
        return true;
    }
    if(instance_exists(obj_cherry))
    {
        if(point_distance(obj_cherry.x,obj_cherry.y,point_x,point_y) <= 250)
        {
            return true;
        }
    }
    if(instance_exists(obj_point))
    {
        with(obj_point)
        {
            if(point_distance(x,y,point_x,point_y) <= 250)
            {
                return true;
            }
        }
    }
    if(instance_exists(magnet_obj))
    {
        if(point_distance(magnet_obj.x,magnet_obj.y,point_x,point_y) <= 250)
        {
            return true;
        }
    }
    if(instance_exists(shield_obj))
    {
        if(point_distance(shield_obj.x,shield_obj.y,point_x,point_y) <= 250)
        {
            return true;
        }
    }
    if(instance_exists(obj_pong))
    {
        if(point_distance(obj_pong.x,obj_pong.y,point_x,point_y) <= 250)
        {
            return true;
        }
    }
}

return false;

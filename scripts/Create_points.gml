global.cur_built_point = 0;

point_index = 0;
while(point_index < GEMS) 
{    
    if(!instance_exists(obj_cherry))
    {
        //Makes a cherry
        RandomizePoint();
        if(IsPointsCollision(global.last_rand_point[e_dim.X],global.last_rand_point[e_dim.Y]) == false)
        {
            global.points_loc[global.cur_built_point,0] = global.last_rand_point[e_dim.X];
            global.points_loc[global.cur_built_point,1] = global.last_rand_point[e_dim.Y];  
            global.cur_built_point++;
            instance_create(global.last_rand_point[e_dim.X],global.last_rand_point[e_dim.Y],obj_cherry);          
        }
    }

    //Makes a point
    RandomizePoint();
    if(IsPointsCollision(global.last_rand_point[e_dim.X],global.last_rand_point[e_dim.Y]) == false)
    {
        global.points_loc[global.cur_built_point,0] = global.last_rand_point[e_dim.X];
        global.points_loc[global.cur_built_point,1] = global.last_rand_point[e_dim.Y];  
        global.cur_built_point++;
        instance_create(global.last_rand_point[e_dim.X],global.last_rand_point[e_dim.Y],obj_point);          
        point_index++;
    }
}


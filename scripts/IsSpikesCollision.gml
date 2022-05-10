var spike_x,spike_y;

spike_x = argument0; 
spike_y = argument1; 

for(i=0;i<global.cur_built_spike;i++)
{
    x1 = global.spikes_loc[i,0];
    y1 = global.spikes_loc[i,1];
    if(point_distance(x1,y1,spike_x,spike_y) <= SPIKES_COLLISION_RADIUS)
      return true;
}

return false;

var spike_loc,spike_obj_name;

spike_loc       = argument0; 
spike_obj_name  = argument1;

global.cur_built_spike = 0;
global.f_lower_spikes = 0;


cur_lower_built_spike = 0;

while(cur_lower_built_spike < global.min_spikes_on_strip) 
{    
    RandomizeSpike(spike_loc);
    
    if(IsSpikesCollision(global.last_rand_spike[e_dim.X],global.last_rand_spike[e_dim.Y]) == false)
    {
        global.spikes_loc[global.cur_built_spike,0] = global.last_rand_spike[e_dim.X];
        global.spikes_loc[global.cur_built_spike,1] = global.last_rand_spike[e_dim.Y];
        global.cur_built_spike ++;
        instance_create (global.last_rand_spike[e_dim.X],global.last_rand_spike[e_dim.Y],spike_obj_name);
        global.one_time_spikes_create[spike_loc]  = 1;
        cur_lower_built_spike ++;
    }

}





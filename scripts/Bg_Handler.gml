if(global.cur_merged_step != 0)
{
    v_color = merge_color(global.cur_bg,global.next_bg,global.cur_merged_step);
    
    //background_colour   = v_color; 
    
    obj_wall.image_blend         = v_color; 
    obj_spikes.image_blend       = v_color; 
    obj_spikes_up.image_blend    = v_color; 
    obj_spikes_right.image_blend = v_color; 
    obj_spikes_left.image_blend  = v_color; 
    
    
    global.cur_merged_step += global.step;
    if(global.cur_merged_step >= 1)
    {
        global.cur_merged_step = 0;      
        return 1; // finished
    }
    
    return 0; // unfinished
}

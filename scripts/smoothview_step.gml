///smoothview_step()
//
// Script:      Handles the movement of the view
// Date:        2018-08-09
// Copyright:   Appsurd

// Initialise the movement by pressing
if(global.cant_scroll == 0)
{
if (device_mouse_check_button_pressed(0,mb_left))
{
    //Start position for dragging
    drag_speed = 0;
    drag = mouse_y;
}

if (device_mouse_check_button(0,mb_left))
{
    //Drag
    drag_speed = (drag - mouse_y) * speed_modifier;
    view_yview += drag_speed;
}

if (abs(drag_speed) > 0)
{
    //Drag slow down effect
    view_yview += drag_speed;
    if (view_yview <= 0 || view_yview >= (room_height-view_hview)) then drag_speed = 0;
    drag_speed += (-drag_speed*smooth);
}

//Keep the screen within the room
view_yview = max(0, min(view_yview, room_height - view_hview));
}

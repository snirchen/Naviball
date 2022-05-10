// Set this to 1 when testing on computer, 0 for deployed device
TestMode = 0;

// When Test Mode is set to 1, these values will be used to set screen size

// (Default Aspect ratio for Galaxy S5)

var test_w = 1080;

var test_h = 1920;

if(TestMode = 0){

// Again, When TestMode is set to 0, this script will 

// capture the screen size and calculate the aspect ratio

display_w = round(window_get_width());
//show_message_async(display_w);

display_h = round(window_get_height());
//show_message_async(display_h);

display_aspect_ratio = display_w/display_h;  
}

else
{
// For test mode, use display values set at begigning of script

display_w    = test_w;

display_h    = test_h;

display_aspect_ratio = display_w/display_h;  
}

// Set the vertical view and ports to our new aspect ratio

view_hview[0] = view_wview[0] / display_aspect_ratio;

view_hport[0] = view_wview[0] / display_aspect_ratio;

// Resize display GUI and set application surface to our new aspect ratio

display_set_gui_size(view_wport[0],view_hport[0])

surface_resize(application_surface, view_wview[0], view_hview[0]);

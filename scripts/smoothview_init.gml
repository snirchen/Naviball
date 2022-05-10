///smoothview_init(horizontal, speedmodifier, smoothness, limit)
//
// Script:      Initialises the smoothview
// Date:        2018-08-09
// Copyright:   Appsurd
//
// Arguments:
// argument0:   Horizontal (1) or Vertical (0)
// argument1:   Speed of the view while swiping (default: 0.33)
// argument2:   Friction causes to slow down (default: 0.08)
// argument3:   Limit value used for clicking (default: 2)

// Initialise variables
drag_speed = 0;

horizontal     = argument0;
speed_modifier = argument1;
smooth         = argument2;
limit          = argument3;

// Set drag direction
drag = mouse_x;

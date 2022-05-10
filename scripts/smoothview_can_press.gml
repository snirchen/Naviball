///smoothview_can_press(drag_speed, limit)
//
// Script:      Checks whether you may click on a moving button
//              Used to prevent clicking while dragging
// Date:        2018-08-09
// Copyright:   Appsurd
//
// Arguments:
// argument0:   The drag speed of the controller object
// argument1:   Limit value of pressing

return (abs(argument0) <= argument1);

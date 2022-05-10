///scr_object_randomplace(number_placed,object_id,x_low,x_high,y_low,y_high,attempt,dist_from_obj,show_debug)

/*This script will allow you to place any number of instances inside 
A given area; The x_low/high and y_low/high work as seen below.

                 y_low
        |-------------------|
        |                   |
  x_low |                   | x_high
        |                   |
        |-------------------|
                 y_high
                 
You may consider using a coordinate to start your x_low/high and y_low/high such as;

|-------|
|EXAMPLE|
|------------------------------------------------------------------------|
|scr_object_randomplace(3,obj_coins,x-200,x+200,y-200,y+200,10,5,0)      |
|                                                                        |
|In this example it will drop 3 obj_coins, in a box that will be 200     |
|pixels in all directions around the x,y. It will attempt each           |
|placed object 10 times before exiting (to avoid an infinite loop), and  |
|it will assure atleast 5 pixels of space between each collision mask;   |
|then finally debug is set to 0, so it will not show messages.           |
|------------------------------------------------------------------------|
*/

number_placed = argument0//#of instances to place
object_id = argument1//#object to be placed

x_low = argument2 //left of random box
x_high = argument3 //right of random box
y_low = argument4 //top of random box
y_high = argument5 //bottom of random box

attempt = argument6 //Number of attempts(higher in more object dense environment)
dist_from_obj = argument7 //Distance in pixels from other objects boundboxes
show_debug = argument8 //show debug message

var i
var c

//Place "number_placed" objects
for (c = 0; c < number_placed; c++)
{
    ///////////////////////////////
    //Choose random spot for object
    var check_x =(irandom_range(x_low,x_high)) //The random x coordinate to check (between x_low and x_high)
    var check_y =(irandom_range(y_low,y_high)) //The random y coordinate to check (between y_low and y_high)
    
    //For loop - Will attempt to place an object "attempt" number of times
    for (i = 0; i < attempt; i++)
    {
        //Check for collision 
        if !place_meeting(check_x + dist_from_obj,check_y,all) and //Check x + "dist_from_obj"
        !place_meeting(check_x-dist_from_obj,check_y,all) and //Check x - "dist_from_obj"
        !place_meeting(check_x,check_y+dist_from_obj,all) and //Check y + "dist_from_obj"
        !place_meeting(check_x,check_y-dist_from_obj,all) //Check y - "dist_from_obj"
        {
            //Create object "object_placed"
            instance_create(check_x,check_y,object_id)
            i = attempt //i = attempt - Exiting the "attempt" for loop
            
            //Show Debug Message
            if show_debug = (1 or true)
            {
                //Debug///////////////////////////////////////////////////////////////
                show_message("Object created at X "+string(check_x)+", Y "+ string(check_y))
            }
            
        }
        else
        {
            //Choose random spot for sprout
            var check_x =(irandom_range(x_low,x_high))
            var check_y =(irandom_range(y_low,y_high))
            
            //Show Debug Message
            if show_debug = (1 or true)
            {
                //Debug///////////////////////////////////////////////////////////////
                show_message("Spot not suitible for object number "+string(c)+" on attempt " + string(attempt))
            }
        }
    }
}


/*Thank you for using installing this script; good luck!*/


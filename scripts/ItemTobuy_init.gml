v_ind       = argument0;
v_obj       = argument1;
v_obj_name  = argument2;
v_status    = argument3;
v_category  = argument4;
v_price  = argument5;

enum item_characteristics
{
   obj = 0,
   name = 1,
   status = 2,
   category = 3,
   price = 4
}


global.items[v_ind,item_characteristics.obj]      = v_obj;
global.items[v_ind,item_characteristics.name]     = v_obj_name;
global.items[v_ind,item_characteristics.status]   = v_status;
global.items[v_ind,item_characteristics.category] = v_category;
global.items[v_ind,item_characteristics.price]    = v_price;



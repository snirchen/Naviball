item_index = argument0;

if(global.items[item_index,item_characteristics.status] == "locked")
{
    return "false";
}
else
{
    return "true";
}




///instance_count_ellipse_object(x1,y1,x2,y2,obj,prec,notme)

var x1, x2, y1, y2, count, obj, prec, notme;

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
obj = argument4;
prec = argument5;
notme = argument6;

var list;
list = ds_list_create();

for(i=0;i<instance_count;i++)
{
        var name = object_get_name(instance_id[i].object_index);
        var oname = object_get_name(obj);
        if(collision_ellipse(x1,y1,x2,y2,instance_id[i],prec,notme) && name == oname)
            ds_list_add(list,instance_id[i]);
}

count = ds_list_size(list);
ds_list_destroy(list);
return count;

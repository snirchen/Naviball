///instance_count_circle_object(x1,y1,r,obj,prec,notme)

var x1, x2, r, count, obj, prec, notme;

x1 = argument0;
y1 = argument1;
r = argument2;
obj = argument3;
prec = argument4;
notme = argument5;

var list;
list = ds_list_create();

for(i=0;i<instance_count;i++)
{
        var name = object_get_name(instance_id[i].object_index);
        var oname = object_get_name(obj);
        if(collision_circle(x1,y1,r,instance_id[i],prec,notme) && name == oname)
            ds_list_add(list,instance_id[i]);
}

count = ds_list_size(list);
ds_list_destroy(list);
return count;

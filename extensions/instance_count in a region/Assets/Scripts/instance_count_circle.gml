///instance_count_circle(x1,y1,r,prec,notme)

var x1, x2, r, count, prec, notme;

x1 = argument0;
y1 = argument1;
r = argument2;
prec = argument3;
notme = argument4;

var list;
list = ds_list_create();

for(i=0;i<instance_count;i++)
{
        if(collision_circle(x1,y1,r,instance_id[i],prec,notme))
            ds_list_add(list,instance_id[i]);
}

count = ds_list_size(list);
ds_list_destroy(list);
return count;
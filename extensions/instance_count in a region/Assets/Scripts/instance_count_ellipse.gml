///instance_count_ellipse(x1,y1,x2,y2,prec,notme)

var x1, x2, y1, y2, count, prec, notme;

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
prec = argument4;
notme = argument5;

var list;
list = ds_list_create();

for(i=0;i<instance_count;i++)
{
        if(collision_ellipse(x1,y1,x2,y2,instance_id[i],prec,notme))
            ds_list_add(list,instance_id[i]);
}

count = ds_list_size(list);
ds_list_destroy(list);
return count;
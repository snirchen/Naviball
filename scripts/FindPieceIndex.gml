var pieces,angle;
pieces = argument0;
angle = argument1;


piece_range = 360/pieces;


for (piece_num = 1; piece_num <= pieces; piece_num++)
{
    if (angle < piece_num*piece_range)
    {
        return piece_num;
    }
}
return 0;



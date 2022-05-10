

#define Admob_Banner_BottomY

var h_dp=0;

switch(argument0)
{
case Admob_BANNER: h_dp=50 break
case Admob_LARGE_BANNER: h_dp=100 break
case Admob_MEDIUM_RECTANGLE: h_dp=250 break
case Admob_FULL_BANNER: h_dp=60 break
case Admob_LEADERBOARD: h_dp=90 break
case Admob_SMART_BANNER: h_dp=90 break
}

var h_px=h_dp*display_get_dpi_y()/160 //https://developer.android.com/guide/practices/screens_support.html
return(display_get_height()-h_px)






#define Admob_Banner_CenterX

switch(argument0)
{

case Admob_BANNER: w_dp=320 break
case Admob_LARGE_BANNER: w_dp=320 break
case Admob_MEDIUM_RECTANGLE: w_dp=300 break
case Admob_FULL_BANNER: w_dp=468 break
case Admob_LEADERBOARD: w_dp=728 break
case Admob_SMART_BANNER: w_dp=display_get_width() break

}

var w_px=w_dp*display_get_dpi_x()/160 //https://developer.android.com/guide/practices/screens_support.html
return(display_get_width()/2-w_px/2)






#define Admob_Banner_TopY
return(0)


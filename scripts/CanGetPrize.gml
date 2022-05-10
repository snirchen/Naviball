// CanGetPrize
// This function decides if the user can get prize or not
// if it's the first time, he can get prize immediately
// otherwise after 12hours from the last time

if(global.never_got_prize == 1)
{
    return true;
}
else if(TimeUntilNextPrize() == 0)
{
    return true;
}
else
{
    global.f_display_time_to_prize = 1;
    return false;    
}

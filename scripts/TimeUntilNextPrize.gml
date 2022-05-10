//returns -1 if date1 is earlier, 1 if date1 is later and 0 if they are the same
d = date_compare_datetime(global.next_prize_date_time, date_current_datetime());
if(d == -1 || d == 0)
    return 0;

global.time_to_next_prize = date_second_span(global.next_prize_date_time, date_current_datetime());

global.hours_to_next_prize = floor(global.time_to_next_prize/3600);
left = global.time_to_next_prize - (global.hours_to_next_prize * 3600);

global.minutes_to_next_prize = floor(left/60);

global.seconds_to_next_prize =  floor(left - (global.minutes_to_next_prize * 60));
   
return global.time_to_next_prize;

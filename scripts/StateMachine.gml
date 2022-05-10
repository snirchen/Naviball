switch(global.die_state)
{
//---------
case dying_state.DS_IDLE:
    nop();
    break;
//---------    
case dying_state.LOAD_TIME_BEFORE_DYING:
    global.required_time = CalculateRequiredTime(1500);
    global.die_state = dying_state.WAIT_FOR_DYING;
    break;
//---------    
case dying_state.WAIT_FOR_DYING:
    if(TimeHasCome(global.required_time))
    {
        OnGameEnd();
        global.die_state = dying_state.DS_IDLE;
        instance_create (x,y,highscore_draw);
        if(global.can_play_second_chance == true) /*&& (global.RealTimePoints > 6) */&& (Admob_RewardedVideoAd_isLoaded())
        {
            instance_create (GAME_OVER_BUTTOMS_X,930,second_chance_ad_bottun_obj);
            instance_create (GAME_OVER_BUTTOMS_X,1300,continue_by_ad_bottun_obj);
            instance_create (GAME_OVER_BUTTOMS_X,1450,no_thanks_obj);
        }
        else
        {
            instance_create(540,800,replay_button_obj);
            instance_create(540,985,second_rate_button_obj);
            instance_create(540-170,1170,second_leaderboard_button_obj);
            instance_create(540,1170,second_shop_button_obj);
            instance_create(540+170,1170,second_gear_button_obj);
        }
 
    }
    break;
//---------    
default:
    nop();
    break;
//--------- 
}

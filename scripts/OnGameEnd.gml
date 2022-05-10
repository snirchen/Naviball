if file_exists('pong_game_info.ini')
{
    if (global.RealTimePoints > global.highscore)
    {
        ini_open ("pong_game_info.ini");
        ini_write_real('points','highscore',global.RealTimePoints);
        global.f_new_best = 1;
        global.highscore = global.RealTimePoints;
    }
    ini_close();
}

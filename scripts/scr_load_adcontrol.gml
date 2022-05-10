if file_exists(working_directory + "adcontrol.ini")
{
   var var_loadFilel;
   var_loadFile = file_text_open_read (working_directory + "adcontrol.ini")
   var_adcontrol_Data = file_text_read_real (var_loadFile);
   file_text_close(var_loadFile);

}

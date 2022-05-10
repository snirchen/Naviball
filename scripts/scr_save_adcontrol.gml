//if(keys > var_keyScoreData)

{
   var var_saveFile = file_text_open_write (working_directory + "adcontrol.ini")
   file_text_write_real (var_saveFile,adcontrol);
   file_text_close(var_saveFile);
   
}
   

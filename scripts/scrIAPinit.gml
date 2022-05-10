///scrIAPinit()
//initialise the ds_map to hold the information for the In App Purchases (Google Play)

var map_create = true; //controller, incase you want to move it to another event trigger
//====================================================================//
//check if Ads product has not been purchased, then enable it:
product = global.productID_noads;
if file_exists("iap_data.dat") //save to a dat file
   {
   show_debug_message("__________________File Exists"); 
   global.purchaseMap = ds_map_secure_load("iap_data.dat");  //loading
   if ds_exists(global.purchaseMap, ds_type_map)               //checking if map exists
      {
      show_debug_message("__________________Map Exists"); //checking
      if ds_map_exists(global.purchaseMap, product)               //checking purchase. Returns if the given key exists for Removing Ads
         { 
             show_debug_message("__________________Purchase Exists");  
             if ds_map_find_value(global.purchaseMap, product) == 0   //check if this NoAds product exists, and not purchased yet
                {
                map_create = false; //if it finds an existing map it doesn't make a new one again, should this script run again
                }
             if ds_map_find_value(global.purchaseMap, product) != 0   //check if this NoAds product exists, and not purchased yet
                {
                global.Ads = false; //then deactiavte ads
                }
         }  else { //no product exists to remove ads via IAP
         global.Ads = true; 
         }
      }  else { //no product map exists
         global.Ads = true; 
         }
    } else { //no product data files exists
      global.Ads = true; 
    }
//====================================================================//
//create map with product ids and save    
if map_create  //checking steps from above..
{
global.purchaseMap = ds_map_create(); 
ds_map_add(global.purchaseMap, product, 0); //leave this as is
//add all products to map at correct position, and default unpurchased value = 0
ds_map_add(global.purchaseMap, global.productID_noads, 0);
ds_map_add(global.purchaseMap, global.productID_coins, 0);
ds_map_add(global.purchaseMap, global.productID_500coins, 0);
ds_map_add(global.purchaseMap, global.productID_1100coins, 0);
ds_map_add(global.purchaseMap, global.productID_2500coins, 0);
ds_map_add(global.purchaseMap, global.productID_6000coins, 0);
ds_map_add(global.purchaseMap, global.productID_10000coins, 0);
ds_map_add(global.purchaseMap, global.productID_adfree, 0);
//save map data
ds_map_secure_save(global.purchaseMap, "iap_data.dat"); //recommended leave this as is
}

///scrIAPpostPurchaseControl();
//to be used in the IAP EVENT, found under OTHER events
var val = ds_map_find_value(iap_data, "type");
switch (val)
   {
   case iap_ev_purchase:
      var map = ds_map_create();
      var purchase_id = ds_map_find_value(iap_data, "index");
      iap_purchase_details(purchase_id, map);
      if ds_map_find_value(map, "status") == iap_purchased
         {
         var product_id = ds_map_find_value(map, "product");
         ds_map_replace(global.purchaseMap, product_id, 1); //set to 1 means it is purchase, and if consumable it is not consumed yet
         switch(product_id)
            {
            case global.productID_noads:
            global.Ads = false;
                 
                 // Remove banner 
                 show_debug_message("Remove banner");
                 GoogleMobileAds_RemoveBanner();
                 //If this is a durable purchase, no need for IAP consume...
                 break;
            case global.productID_coins:
                 iap_consume(product_id);
                 break;
            case global.productID_500coins:
                 iap_consume(product_id);
                 break;
            case global.productID_1100coins:
                 iap_consume(product_id);
                 break;
            case global.productID_2500coins:
                 iap_consume(product_id);
                 break;
            case global.productID_6000coins:
                 iap_consume(product_id);
                 break;
            case global.productID_10000coins:
                 iap_consume(product_id);
                 break;
            case global.productID_adfree:
                 iap_consume(product_id);
                 break;     
            //case add more consumable products here also to trigger consume event below
            }
         }
      ds_map_destroy(map);
      break;
   case iap_ev_consume:
      var product_id = ds_map_find_value(iap_data, "product");
      if ds_map_find_value(iap_data, "consumed") //check if it is a consumable product
         {             
             //Check all consumable products, if only one product in game then SWITCH not needed
             switch (product_id)
             {
                 case global.productID_coins: global.keys += 500; 
                 
                 break;
                 case global.productID_500coins: keys += 500; 
                 //room_restart(); 
                 break;
                 case global.productID_1100coins: keys += 1100; 
                 
                 break;
                 case global.productID_2500coins: keys += 2500; 
                 
                 break;
                 case global.productID_6000coins: keys += 6000; 
                 
                 break;
                 case global.productID_10000coins: keys += 10000; 
                 
                 break;
                 case global.productID_adfree: adcontrol = 1; 
                 scr_save_adcontrol();
                 scr_load_adcontrol();
                 room_restart();
                 break;
//               case ... add all consumable products here, and the action ingame when they are consumed
                 //default: STATEMENT;
             }
             ds_map_replace(global.purchaseMap, product_id, 0); //reset back to 0, since when consumed it is destroyed again
         }
      break;
   }
//Save again, the updated info of product status
ds_map_secure_save(global.purchaseMap, "iap_data.dat");

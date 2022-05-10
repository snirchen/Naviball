///scrIAPconnect();
//connects to target store
//add all products info to the temp data maps
var pNoAds = ds_map_create();
ds_map_add(pNoAds, "id", global.productID_noads);
ds_map_add(pNoAds, "title", "Remove Ads");
ds_map_add(pNoAds, "type", "Durable"); //managed

pCoins = ds_map_create();
ds_map_add(pCoins, "id", global.productID_coins);
ds_map_add(pCoins, "title", "Gold Coins!");
ds_map_add(pCoins, "type", "Consumable"); //unmanaged


p500Coins = ds_map_create();
ds_map_add(p500Coins, "id", global.productID_500coins);
ds_map_add(p500Coins, "title", "500+ Diamonds!");
ds_map_add(p500Coins, "type", "Consumable"); //unmanaged

p1100Coins = ds_map_create();
ds_map_add(p1100Coins, "id", global.productID_1100coins);
ds_map_add(p1100Coins, "title", "1100 Diamonds!");
ds_map_add(p1100Coins, "type", "Consumable"); //unmanaged

p2500Coins = ds_map_create();
ds_map_add(p2500Coins, "id", global.productID_2500coins);
ds_map_add(p2500Coins, "title", "2500 Diamonds!");
ds_map_add(p2500Coins, "type", "Consumable"); //unmanaged

p6000Coins = ds_map_create();
ds_map_add(p6000Coins, "id", global.productID_6000coins);
ds_map_add(p6000Coins, "title", "6000 Diamonds!");
ds_map_add(p6000Coins, "type", "Consumable"); //unmanaged

p10000Coins = ds_map_create();
ds_map_add(p10000Coins, "id", global.productID_10000coins);
ds_map_add(p10000Coins, "title", "10000 Diamonds!");
ds_map_add(p10000Coins, "type", "Consumable"); //unmanaged


/////ad free maker
adfree = ds_map_create();
ds_map_add(adfree, "id", global.productID_adfree);
ds_map_add(adfree, "title", "AD FREE Your Game!");
ds_map_add(adfree, "type", "Consumable"); //unmanaged
//create temp list of all products to send to store, to check
productList = ds_list_create();  //create temp list : THIS LINE IS MISSING FROM TUTORIAL
ds_list_add(productList, pNoAds);
ds_list_add(productList, pCoins);
ds_list_add(productList, p500Coins);
ds_list_add(productList, p1100Coins);
ds_list_add(productList, p2500Coins);
ds_list_add(productList, p6000Coins);
ds_list_add(productList, p10000Coins);
ds_list_add(productList, adfree);
//===============//
//Connect with Store
//===============//
iap_activate(productList); //activate these products connection with store
//===============//
//destroy temp maps and list, to prevent memory leaks
ds_map_destroy(pNoAds);
ds_map_destroy(pCoins);
ds_map_destroy(p500Coins);
ds_map_destroy(p1100Coins);
ds_map_destroy(p2500Coins);
ds_map_destroy(p6000Coins);
ds_map_destroy(p10000Coins);
ds_map_destroy(adfree);
ds_list_destroy(productList);

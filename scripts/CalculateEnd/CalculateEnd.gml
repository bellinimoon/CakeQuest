// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CalculateEnd(){
	for(var i = 0; i < ds_list_size(select_ingre); i++){
		if(ds_list_find_value(select_ingre, i) != false){
			emptyLists ++;
		}else{
			fullLists = 1;
		}
		if(ds_list_find_value(select_ingre2, i) != false){
			emptyLists ++;
		}else{
			fullLists = 1;
		}
	}
	if(emptyLists == 0){
		endName = "JOKER";
	}else if(fullLists == 0){
		endName = "CHIEF";
	}else if(ds_list_find_value(select_ingre, 6) == true){
		//shrimp
		endName = "POISONER";
	}else if(ds_list_find_value(select_ingre, 0) == true || ds_list_find_value(select_ingre, 5) == true){
		endName = "LOSER";
	}else if(ds_list_find_value(select_ingre2, 6) == true && ds_list_find_value(select_ingre, 8) == true && ds_list_find_value(select_ingre, 11) == true && ds_list_find_value(select_ingre2, 1) == true && ds_list_find_value(select_ingre, 4) == true){
		if(ds_list_find_value(select_ingre2, 9) == true && ds_list_find_value(select_ingre, 7) == true){
			endName = "WINNER";
		}else{
			endName = "NERD";
		}
	}else{
		if(emptyLists < 5){
			endName = "HERD";
		}else{
			endName = "BOURGEOIS"
		}
	}
}

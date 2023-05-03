/// @description Insert description here
// You can write your code in this editor
for (var j = 0; j < 13; j++) {	
	if (ds_list_find_value(got_ingre,j)) {
		changeSprite(ds_list_find_value(ingredients,j),j);
	}
}
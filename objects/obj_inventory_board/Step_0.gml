/// @description Insert description here
// You can write your code in this editor

function changeSprite(spr){
	num = ds_list_find_index(ingredients, spr);
	with(instance_find(obj_unknown, num)){
		sprite_index = asset_get_index("spr_food_" + spr);
	}
}

changeSprite("apple");
//changeSprite(acquired.Apple);

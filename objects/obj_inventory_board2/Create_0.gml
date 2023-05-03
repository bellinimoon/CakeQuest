/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sud_pickup,0,false)

globalvar ingredients2;
ingredients2 = ds_list_create();
ds_list_add(ingredients2, "eggplant");
ds_list_add(ingredients2, "carrot");
ds_list_add(ingredients2, "corn");
ds_list_add(ingredients2, "tomato");
ds_list_add(ingredients2, "meatball");
ds_list_add(ingredients2, "cake");
ds_list_add(ingredients2, "sushi");
ds_list_add(ingredients2, "bread");
ds_list_add(ingredients2, "cookie");
ds_list_add(ingredients2, "chocolate");
ds_list_add(ingredients2, "pudding");
ds_list_add(ingredients2, "chickenleg");
ds_list_add(ingredients2, "dumplings");

//ingredientsAmount = 26;
for(var i = 0; i < 4; i++){  
	with(instance_create_layer(120 + x + 100*i, y + 100, "boxes", obj_selectbox)){
		box_num = i;
	};
}
for(var i = 0; i < 5; i++){ 
	with(instance_create_layer(55 + x + 100*i, y + 170, "boxes", obj_selectbox)) {
		box_num = 4 + i;
	};
}
for(var i = 0; i < 4; i++){ 
	with(instance_create_layer(95 + x + 100*i, y + 240, "boxes", obj_selectbox)) {
		box_num = 9 + i;
	};
}


//build icons
for(var i = 0; i < 4; i++){ 
	instance_create_layer(120 + x + 100*i + 30, y + 100 + 5, "ingredients", obj_unknown);
}
for(var i = 0; i < 5; i++){ 
	instance_create_layer(55 + x + 100*i + 30, y + 170 + 5, "ingredients",  obj_unknown);
}
for(var i = 0; i < 4; i++){ 
	instance_create_layer(95 + x + 100*i + 30, y + 240 + 5, "ingredients",  obj_unknown);
}

num = noone;
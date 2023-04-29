/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sud_pickup,0,false)

globalvar ingredients;
ingredients = ds_list_create();
ds_list_add(ingredients, "apple");
ds_list_add(ingredients, "cherry");
ds_list_add(ingredients, "lemon");
ds_list_add(ingredients, "milk");
ds_list_add(ingredients, "alcohol");
ds_list_add(ingredients, "trout");
ds_list_add(ingredients, "shrimp");
ds_list_add(ingredients, "shellfish");
ds_list_add(ingredients, "beef");
ds_list_add(ingredients, "egg");
ds_list_add(ingredients, "chili");
ds_list_add(ingredients, "potato");
ds_list_add(ingredients, "mushroom");

//ingredientsAmount = 26;
for(var i = 0; i < 4; i++){  
	instance_create_layer(120 + x + 100*i, y + 100, "boxes", obj_selectbox);
}
for(var i = 0; i < 5; i++){ 
	instance_create_layer(55 + x + 100*i, y + 170, "boxes", obj_selectbox);
}
for(var i = 0; i < 4; i++){ 
	instance_create_layer(95 + x + 100*i, y + 240, "boxes", obj_selectbox);
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
/// @description Insert description here
// You can write your code in this editor

enum acquired{
	Apple,
	Cherry,
	Lemon,
	Milk,
	Beer,
	Trout,
	Shellfish,
	Beef,
	Egg,
	Chili,
	PurplePotato,
	Mushroom
}

food = ["apple",
	"cherry",
	"lemon",
	"milk",
	"beer",
	"trout",
	"shellfish",
	"beef",
	"egg",
	"chili",
	"purplePotato",
	"mushroom"]

globalvar ingredients;
ingredients = ds_list_create();
ds_list_add(ingredients, "apple");
ds_list_add(ingredients, "cherry");
ds_list_add(ingredients, "lemon");

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
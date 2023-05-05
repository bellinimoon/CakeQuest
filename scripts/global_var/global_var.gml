globalvar dialogue;
globalvar choices;
choices = 0;
dialogue = ds_list_create()

globalvar emptyLists;
globalvar fullLists;
emptyLists = 0;
fullLists = 0;


globalvar destroyTom;
destroyTom = false;
globalvar destroyEmma;
destroyEmma = false;
globalvar destroyNewton;
destroyNewton = false;



globalvar cookFinished;
cookFinished = false;
globalvar endName;

globalvar textBoxFace;
textBoxFace = spr_avatar_face;

globalvar player_startx;
player_startx = 704
globalvar player_starty;
player_starty = 220

globalvar chickenCollected;

globalvar choiceAmount;
//choiceAmount = 2;

globalvar meetOwenFirst;
meetOwenFirst = 1;

globalvar extraDialogue1;
extraDialogue1 = false;
globalvar extraDialogue2;
extraDialogue2 = false;
globalvar extraDialogue3;
extraDialogue3 = false;
globalvar extraDialogue4;
extraDialogue4 = false;

globalvar optionSelected;
globalvar inventoryAccess ;


globalvar got_ingre;
got_ingre = ds_list_create();
for (var s = 0; s<13; s++) {
	ds_list_add(got_ingre,false);
}
globalvar got_ingre2;
got_ingre2 = ds_list_create();
for (var s = 0; s<13; s++) {
	ds_list_add(got_ingre2,false);
}

globalvar select_ingre;
select_ingre = ds_list_create();
for (var s = 0; s<13; s++) {
	ds_list_add(select_ingre,false);
}

globalvar select_ingre2;
select_ingre2 = ds_list_create();
for (var s = 0; s<13; s++) {
	ds_list_add(select_ingre2,false);
}

function changeSprite(spr,j){
	num = ds_list_find_index(ingredients, spr);
	with(instance_find(obj_unknown, num)){
		sprite_index = asset_get_index("spr_food_" + spr);
	}
	if (ds_list_find_value(select_ingre,num)) {
		with(instance_find(obj_selectbox,num)) {
			image_index = 1;
		}
	} else {
		with(instance_find(obj_selectbox,num)) {
			image_index = 0;
		}
	}
}
function changeSprite2(spr,j){
	num = ds_list_find_index(ingredients2, spr);
	with(instance_find(obj_unknown, num)){
		sprite_index = asset_get_index("spr_food_" + spr);
	}
	if (ds_list_find_value(select_ingre2,num)) {
		with(instance_find(obj_selectbox,num)) {
			image_index = 1;
		}
	} else {
		with(instance_find(obj_selectbox,num)) {
			image_index = 0;
		}
	}
}

globalvar foodCollection;
foodCollection = [["Apple",false],["Cherry", false],["Lemon", false],
["Milk", false],["Alcohol", false],["Trout", false],["Shrimp", false],
["Shellfish", false],["Beef", false],["Egg", false],["Chili", false],
["Potato", false],["Mushroom", false ],["Eggplant", false],["Carrot", false],
["Corn", false],["Tomato", false],["Meatball", false],["Cake", false],["Sushi", false],
["Bread", false],["Cookie", false],["Chocolate", false],["Pudding", false],["chickenleg", false],
["Dumplings", false]];
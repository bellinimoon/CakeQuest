/// @description Insert description here
// You can write your code in this editor
for (var j = 0; j < 13; j++) {	
	if (ds_list_find_value(got_ingre2,j)) {
		changeSprite2(ds_list_find_value(ingredients2,j),j);
	}
}

/*
changeSprite2("eggplant");
changeSprite2("carrot");
changeSprite2("corn");
changeSprite2("tomato");
changeSprite2("meatball");
changeSprite2("cake");
changeSprite2("sushi");
changeSprite2("bread");
changeSprite2("cookie");
changeSprite2("chocolate");
changeSprite2("pudding");
changeSprite2("chickenleg");
changeSprite2("dumplings");
*/
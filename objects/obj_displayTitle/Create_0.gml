/// @description Insert description here
// You can write your code in this editor
ds_list_add(dialogue, @"Rowan
Here I go succeeding the throne of the king of comic books! I need to go to Ms.Owen's home NOW!");
ds_list_add(dialogue, @"Rowan
It's just on the right side of my house, so it shouldn't take long!");
ds_list_add(dialogue, @"Rowan
A casserole contest is a piece of cake to me!");
ds_list_add(dialogue, @"Ready?");
choices = 0;
choiceAmount = 2;
meetOwenFirst = 1;
extraDialogue1 = false;
extraDialogue2 = false;
extraDialogue3 = false;
extraDialogue4 = false;

inventoryAccess = false;

player_starty = 220
player_startx = 704

chickenCollected = 0;

ds_list_clear(select_ingre);
ds_list_clear(select_ingre2);
ds_list_clear(got_ingre);
ds_list_clear(got_ingre2);

for (var s = 0; s<13; s++) {
	ds_list_add(got_ingre,false);
}

for (var s = 0; s<13; s++) {
	ds_list_add(got_ingre2,false);
}

for (var s = 0; s<13; s++) {
	ds_list_add(select_ingre,false);
}

for (var s = 0; s<13; s++) {
	ds_list_add(select_ingre2,false);
}
foodCollection = [["Apple",false],["Cherry", false],["Lemon", false],
["Milk", false],["Alcohol", false],["Trout", false],["Shrimp", false],
["Shellfish", false],["Beef", false],["Egg", false],["Chili", false],
["Potato", false],["Mushroom", false ],["Eggplant", false],["Carrot", false],
["Corn", false],["Tomato", false],["Meatball", false],["Cake", false],["Sushi", false],
["Bread", false],["Cookie", false],["Chocolate", false],["Pudding", false],["chickenleg", false],
["Dumplings", false]];
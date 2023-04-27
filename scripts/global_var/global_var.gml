globalvar dialogue;
globalvar choices;
choices = 0;
dialogue = ds_list_create()
ds_list_add(dialogue, @"Me
Today is an important day! I need to go to Ms.Owen's home NOW!");
ds_list_add(dialogue, @"Me
It's just on the right side of my house, so it shouldn't take long!");
ds_list_add(dialogue, @"Me
But first of all, let me leave my house!");
ds_list_add(dialogue, @"Ready?");

globalvar textBoxFace;
textBoxFace = spr_avatar_face;

globalvar player_startx;
player_startx = 704
globalvar player_starty;
player_starty = 220

globalvar choiceAmount;
choiceAmount = 2;

globalvar extraDialogue1;
extraDialogue1 = false;
globalvar extraDialogue2;
extraDialogue2 = false;
globalvar extraDialogue3;
extraDialogue3 = false;
globalvar extraDialogue4;
extraDialogue4 = false;


globalvar end1_dead;
end1_dead = false;
globalvar end2_debtor;
end2_debtor = false;

globalvar inventoryAccess ;
inventoryAccess = false;
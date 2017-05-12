global.merge1 = global.onClickPerson.tribe
global.counterForSwap1 = global.onClickPerson.totalMembers
splitTribe = instance_create(global.onClickPerson.x +3, global.onClickPerson.y + 3, newTribe);

global.merge2 = splitTribe.tribe
global.counterForSwap2 = splitTribe.totalMembers

room_goto(trademembers);


global.onClickPerson.tribe = global.merge1;
global.onClickPerson.totalMembers = global.merge1[98].cals

splitTribe.tribe = global.merge2;
splitTribe.totalMembers = global.merge2[98].cals 

GUI.picked = true;

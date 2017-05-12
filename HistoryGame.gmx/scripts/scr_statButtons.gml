///Statistics screen buttons
switch(action) {
    case "quest1":
        global.viewQuest = 1;
        room_goto(rm_questInfo);
        break;
    case "quest2":
        global.viewQuest = 2;
        room_goto(rm_questInfo);
        break;
    case "quest3":
        global.viewQuest = 3;
        room_goto(rm_questInfo);
        break;
    case "quest4":
        global.viewQuest = 4;
        room_goto(rm_questInfo);
        break;
    case "quest5":
        global.viewQuest = 5;
        room_goto(rm_questInfo);
        break;
    case "stat":
        room_goto(rm_stats);
        break;
    case "statsToMap":
        room_goto(mapScreen);
        break;
    
}   

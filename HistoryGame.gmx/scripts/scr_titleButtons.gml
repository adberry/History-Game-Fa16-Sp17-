///Determines what to do or which room to go to when each button ispressed
switch(action) {
    //TITLE
    case "start": //START GAME
        room_goto(mapScreen);
        break;
    case "instruct": //INSTRUCTIONS
        room_goto(rm_instruct);
        break;
    case "exit": //EXIT
        game_end();
        break;
    //INSTRUCTIONS
    case "back": //BACK
        room_goto(rm_title);
        break;
    case "map": //MAP
        room_goto(rm_map);
        break;
    case "cards": //CARDS
        room_goto(rm_cards);
        break;
}   

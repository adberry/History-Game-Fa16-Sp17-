
switch (mpos)
{
    case 0:  
    {
    // call the new game script
       script_execute(New_Game_Script);
        break;
    }
        
    case 1:
    {
       //script_execute(Card_Creation_Script); // change this later to load game
       //room_goto(card_carousel_room);
       //room_set_persistent(main_menu_room, false);
       instance_destroy();
       room_goto_next();
        break;
    }
    
     case 2:
    {
    break;
    }
    
    case 3:
    {
        break;
    }
    
    case 4:
    {
    game_end();
    break;
    }
    
    default:  break;    
    
}

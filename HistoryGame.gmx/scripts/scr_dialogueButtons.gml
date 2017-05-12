switch(action) {
//SETUP
    case "startDialogue": //START DIALOGUE
        room_goto(rm_dialogue);
        break;
    case "chrep": //CHANGE INDIVIDUAL REPUTATION
        obj_rep.index++;
        if (obj_rep.index > obj_rep.maxIndex) {
            obj_rep.index = 0;
        }
        global.rep = obj_rep.choice[obj_rep.index];
        break;
    case "chsol": //CHANGE GROUP SOLIDARITY
        obj_sol.index++;
        if (obj_sol.index > obj_sol.maxIndex) {
            obj_sol.index = 0;
        }
        global.sol = obj_sol.choice[obj_sol.index];
        break;
    case "chalt": //CHANGE OWNER ALTRUISM
        obj_alt.index++;
        if (obj_alt.index > obj_alt.maxIndex) {
            obj_alt.index = 0;
        }
        global.alt = obj_alt.choice[obj_alt.index];
        break;
        
    case "chsit": //CHANGE SITUATION
        obj_choice.index++;
        if (obj_choice.index > obj_choice.maxIndex) {
            obj_choice.index = 0;
        }
        global.sit = obj_choice.sit[obj_choice.index];
        
        break;
        
//DIALOGUE
    case "returnSetup": //RETURN TO SETUP PAGE
        if (global.initsit != "getitem") {
            room_goto(mapScreen);
        } else {
            if (global.sit == "endrequest") {
                for (i = 1; i <= global.bandMax; i++) {
                    if (global.char[i,chara.cname] == global.chosenRecipient) {
                        break;                        
                    } 
                }
                    
                
                for (k = 1; k <= global.itemMax; k++) {
                    if (global.items[k,tool.iname] == global.chosenItem) {
                        break;                        
                    } 
                }
                global.dialogue = global.items[k,tool.iname];
                global.update = true;
                if (global.resultAlt == "HIGH") {
                    
                    global.items[k,tool.owner] =  i;   
                    
                } else if (global.resultAlt == "MED") {
                
                    global.items[k,tool.owner] =  i;
                        
                } else if (global.resultAlt == "LOW") {
                
                }
            }
            
            room_goto(rm_production);
        }
        break;
        
    case "trade":
        global.chosenRecipient = global.char[global.chosenChar,chara.cname];
        global.sit = "getitem";
        room_goto(rm_dialogue);
        break;
}

switch(global.sit) {
    
    case "encounter":
        global.dialogue = "<You have encountered tracks, trail, and camp-signs that indicate a band of distant #relatives has recently passed through this area. What do you do?>##";
        break;
        
    case "invite":
        global.dialogue = "BAND: You are a strong people with open hearts. Join our band!##"
        global.dialogue += "<Which of your guests do you want to be in your band?> "
        break;
    
    case "marriage":
        global.dialogue = "BAND: You are a comely people, with open hearts. Marry one of your people to ours.##<Who from your band do you wish to enter a marriage?>";
        break;
    
    case "feedfail":
        global.dialogue = "OTHERS: You are a selfish, greedy people, a blight on the memory of our Grandmothers! #Goodbye!";
        break;
    
    case "getitem":
        global.dialogue = "<Who do you want an item from?> ";
        break;   
}

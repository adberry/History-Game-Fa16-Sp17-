global.Saved = true;
game_save(argument0);

if(file_exists(argument0)){
    show_message("Save successful!");
}

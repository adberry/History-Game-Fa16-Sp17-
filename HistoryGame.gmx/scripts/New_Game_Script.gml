// set player values here to initial state, start on the first state with turn 0

// TODO: Add code to change new game menu to continue
// add the code to utilize the save feature 

// Constants that are used to represent a phase

ADAPTATION_PHASE = 0;
PRODUCTION_PHASE = 1;
CONSUMPTION_PHASE = 2;
TRAVEL_PHASE = 3;

turnorder = ds_list_create();

turnnumber = 1;
phasenumber = 0;



ds_list_add(turnorder, ADAPTATION_PHASE);
ds_list_add(turnorder, PRODUCTION_PHASE);
ds_list_add(turnorder, CONSUMPTION_PHASE);
ds_list_add(turnorder, TRAVEL_PHASE);


// find the first phase and turn
current_phase = ds_list_find_value(turnorder, phasenumber); 







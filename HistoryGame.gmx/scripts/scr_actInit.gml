enum act {
    aname, assigned, mini, maxi, desc
}

global.activity[1,act.aname] = "Rest";
global.activity[1,act.assigned] = -1;
global.activity[1,act.mini] = -1;
global.activity[1,act.maxi] = -1;
global.activity[1,act.desc] = "Rests this character.#Develops solidarity.#Cannot travel if resting.";

global.activity[2,act.aname] = "Rest All";
global.activity[2,act.assigned] = -1;
global.activity[2,act.mini] = -1;
global.activity[2,act.maxi] = -1;
global.activity[2,act.desc] = "Rest all characters.#Develops a lot of solidarity.#Cannot travel if resting.#(This affects ALL characters,#so be certain that you want#to do this.)";

global.activity[3,act.aname] = "Hunt";
global.activity[3,act.assigned] = 0;
global.activity[3,act.mini] = 1;
global.activity[3,act.maxi] = 3;
global.activity[3,act.desc] = "Low chance of gaining a lot#of calories.#Better chances if more people#are assigned.";

global.activity[4,act.aname] = "Gather";
global.activity[4,act.assigned] = 0;
global.activity[4,act.mini] = 1;
global.activity[4,act.maxi] = 3;
global.activity[4,act.desc] = "High chance of gaining some#calories.#Better haul if#more people are assigned.";

global.activity[5,act.aname] = "Fish";
global.activity[5,act.assigned] = 0;
global.activity[5,act.mini] = 1;
global.activity[5,act.maxi] = 2;
global.activity[5,act.desc] = "Rather low chance of#gathering a lot of calories.";

global.activity[6,act.aname] = "Build Spear";
global.activity[6,act.assigned] = 0;
global.activity[6,act.mini] = 1;
global.activity[6,act.maxi] = 1;
global.activity[6,act.desc] = "Build a spear, which can help#with hunting.";

global.activity[7,act.aname] = "Build Boat";
global.activity[7,act.assigned] = 0;
global.activity[7,act.mini] = 3;
global.activity[7,act.maxi] = 4;
global.activity[7,act.desc] = "Build a boat, which can allow#travel over water.";

global.actMax = 7;

for(i = 0; i < swap1spawn.counter; i++){
global.merge1[i].name = global.team1[i].name;
global.merge1[i].sex = global.team1[i].sex
global.merge1[i].cals = global.team1[i].cals
}
for(i = 0; i < swap2spawn.counter; i++){
global.merge2[i].name = global.team2[i].name;
global.merge2[i].sex = global.team2[i].sex
global.merge2[i].cals = global.team2[i].cals
}




global.merge1[98].cals = swap1spawn.counter;
global.merge2[98].cals = swap2spawn.counter;


//global.counterForSwap1 = swap1spawn.counter;
//global.counterForSwap2 = swap2spawn.counter;

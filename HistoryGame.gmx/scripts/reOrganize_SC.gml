/*


*/


if(global.selectedTeam == "team1")
{
//temp = instance_create(0, 0, tribeMember);
temp =  global.team1[global.selectedI];
global.team2[swap2spawn.counter]= instance_create(0,0,tribeMember)//just added
global.team2[swap2spawn.counter].name = temp.name;
global.team2[swap2spawn.counter].sex = temp.sex;
global.team2[swap2spawn.counter].cals = temp.cals;

    swap2spawn.counter++;
   swap1spawn.counter--;
    global.team1[global.selectedI].name = "N/A"
    global.team1[global.selectedI].cals = 0
    global.team1[global.selectedI].sex = "N/A"

}else{
    //temp = instance_create(0, 0, tribeMember);
    temp =  global.team2[global.selectedI];
    global.team1[swap1spawn.counter] = instance_create(0,0,tribeMember)
    global.team1[swap1spawn.counter].name = temp.name;
   global.team1[swap1spawn.counter].sex = temp.sex;
   global.team1[swap1spawn.counter].cals= temp.cals;
  
    swap1spawn.counter++;
    swap2spawn.counter--;
    global.team2[global.selectedI].name = "N/A"
    global.team2[global.selectedI].cals = 0
    global.team2[global.selectedI].sex = "N/A"


}




reOtemp = instance_create(0, 0, tribeMember);
reOtemp.name = "null"

for(i = 0; i < swap1spawn.counter; i++){
if(global.team1[i].name == "N/A"){
reOtemp = global.team1[i];
global.team1[i] = global.team1[i + 1];
global.team1[i + 1] = reOtemp;
}
}

for(i = 0; i < swap2spawn.counter; i++){
if(global.team2[i].name == "N/A"){
reOtemp = global.team2[i];
global.team2[i] = global.team2[i + 1];
global.team2[i + 1] = reOtemp;
}
}










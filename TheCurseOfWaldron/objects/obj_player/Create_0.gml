hspeed = 0;

vspeed = 0;
if (room == 4){
	lastChecker = false;//Idk, it worked without this before and then it broke and this was the solution
}else{
	lastChecker = true;	
}
walksp = 2.4;
tipShowing = false;
shotCooldown = 30;
talking = false;
waitingToShoot = false;
training = false;
trainingOver = false;
canShield = true;
attacking = false;
hp = 3;
show_debug_message(room);
if(room == 4){
obj_scoreboard.tip = 1;	
}

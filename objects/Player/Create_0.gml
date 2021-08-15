event_inherited();
name="charles"
walkSpeed=1.5
xPos=0;
yPos=0;
imageAngle=0
state = states.normal
sprite_index=spr_player
imgIndex=0;



	
function walk(){
var keyLeft = keyboard_check(INPUT_LEFT)
var keyRight = keyboard_check(INPUT_RIGHT)
var keyUp = keyboard_check(INPUT_UP)
var keyDown = keyboard_check(INPUT_DOWN)

xPos=0
yPos=0
	//var key = keyboard_check(keyboard_key)
	//show_debug_message(key)
	if(keyLeft){
		xPos=-1;
	}
	if(keyRight){
		xPos=1;
	}
	if (keyUp){
		yPos=-1
	}
	if(keyDown){
	yPos=1}


	hspd=xPos*walkSpeed
	vspd=yPos*walkSpeed
	
	var obj = Solid
		if (place_meeting(x + hspd, y, obj)) {
    while (!place_meeting(x + sign(xPos), y, obj))
        x += sign(xPos);
    hspd = 0;
}
x+=hspd

if (place_meeting(x, y + vspd, obj)) {
    while (!place_meeting(x, y + sign(vspd), obj))
        y += sign(vspd);
    vspd = 0;
}
y+=vspd
	
}

function look(){
	imageAngle=point_direction(x,y,mouse_x,mouse_y)
	var mouseX=(mouse_x+x)/2
	var mouseY=(mouse_y+y)/2
	camera_set_view_pos(gameCamera ,mouseX-(SCREEN_WIDTH/2),mouseY-(SCREEN_HEIGHT/2))

}

function _onDamage(){
	show_debug_message("i was damaged")
}
onDamaged(_onDamage)
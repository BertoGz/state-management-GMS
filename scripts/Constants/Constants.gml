
//*****GLOBAL CONSTANTS
//SCREEN SIZES
globalvar SCREEN_WIDTH;
globalvar SCREEN_HEIGHT;
globalvar GUI_WIDTH;
globalvar GUI_HEIGHT;
//KEY_INPUTS
globalvar INPUT_LEFT;
globalvar INPUT_RIGHT;
globalvar INPUT_UP;
globalvar INPUT_DOWN;

// ITEM_TYPES
globalvar ITEM_TYPE_NULL;
globalvar ITEM_TYPE_ARMOUR;
globalvar ITEM_TYPE_CRAFT;
globalvar ITEM_TYPE_WEAPON;

//***** CONSTANTS DEFINED

//SCREEN SIZES

SCREEN_WIDTH=384
SCREEN_HEIGHT=216
GUI_WIDTH=SCREEN_WIDTH*2
GUI_HEIGHT=SCREEN_HEIGHT*2

//KEY_INPUTS
INPUT_LEFT=ord("A")
INPUT_RIGHT=ord("D")
INPUT_UP=ord("W")
INPUT_DOWN=ord("S")


// ITEM TYPES
ITEM_TYPE_NULL =-1
ITEM_TYPE_ARMOUR = 0;
ITEM_TYPE_CRAFT = 1;
ITEM_TYPE_WEAPON = 2;






function baseDependency(condition,affirm,neg){
	if (condition){
		
	}
}

function giveItem(item,from,to){
	show_debug_message(from + "gave"+ string(item) +"to" + to )
}



sprite_index=spr_player
imgIndex=1
name="Ernesto"




function res1()	{
	
	var nextDialogue={
	text:"I need you to find me 3 uncut emeralds",
	from:name,
	type:"text",
	next:{
			text:"I will reward you with something you never seen before.",
			from:name,
			type:"text",
		}
	}
	dispatchGameReducer(onTalkAction(nextDialogue))
	dispatchPlayerReducer(setAlive(false))
	
}

function res2(){

}


dialogueStart = {
text:"Greetings adventurer! Its a nice day wouldnt you say?",
from:name,
type:"text",
next:{
		text:"I think its a fine lovely day",
		from:"main",
		type:"text",
		next:{
			text:"You seem to be in need of a task.",
			from:name,
			type:"text",
			next:{
				text:"",
				from:"main",
				options:["Yes I am","No thank, you go away!"],
				results:[res1,res2],
				type:"input",
				idObject:id,
			}
		}
	}
}





talkInstance=dialogueStart








sprite_index=spr_player
imgIndex=1
name="Edgar"

dialogueStart = {};
dialogue2  = {};
dialogue3  = {};
dialogue4 = {};
leaveDialogue={
	text:"Ok ill leave",
	from:"main",
	type:"text",
	next:{
		text:"You better",
		from:name,
		type:"text"
	}
}

dontLeaveDialogue={
	text:"Sorry my mans but I wont leave",
	from:"main",
	type:"text",
}

function leaveRes(){
	dispatchGameReducer(onTalkAction(leaveDialogue))
	
}
function dontLeaveRes(){
	dispatchGameReducer(onTalkAction(dontLeaveDialogue))
}

nextDialogue={
	text:"Why?",
	from:"main",
	type:"text",
	next:{
		text:"THE KREPE",
		from:name,
		type:"text",
		next:{
			text:"Should I listen and leave?",
			from:"main",
			type:"input",
			options:["Leave","Dont Leave"],
			results:[leaveRes,dontLeaveRes],
			idObject:id,
		}
	}
}
function res1()	{
	dispatchGameReducer(onTalkAction(nextDialogue))
}

dontAskWhy={
	text:"Ooo ok got it.",
	from:"main",
	type:"text",
}
function res2()	{



	dispatchGameReducer(onTalkAction(dontAskWhy))
}





dialogueStart = {
text:"Havent you heard?",
from:name,
type:"text",
next:{
	text:"I heard its dangerous to rome the woods at this time.",
	from:name,
	type:"text",
	next:{
			text:"Id head on home if I were you",
			from:name,
			type:"text",
			next:{
				text:"Should I ask why?",
				from:"main",
				options:["Sure","Nope"],
				results:[res1,res2],
				type:"input",
				idObject:id,
			}
		}
}
}





talkInstance=dialogueStart








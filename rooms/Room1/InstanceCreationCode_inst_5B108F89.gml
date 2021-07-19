sprite_index=spr_player
imgIndex=1
name="Ernesto"






function res1(){
	Player.state=states.normal
	closeDialogueBox()
}

function res2(){
	Player.state=states.normal
	closeDialogueBox()
}


dialogue1 = {
text:"Greetings adventurer! Its a nice day wouldnt you say?",
from:name}

dialogue2 = {
text:"I think its a fine lovely day",
from:"main"}

dialogue3 = {
text:"I have a task for you. Are you up for it?",
from:name,
options:["Sure i am down","No thank you go away"],
results:[res1,res2]
}
	





dialogues=[dialogue1,dialogue2,dialogue3]





function talk(){
createDialogueBox(dialogues)
}

onSpeak = talk




name=""
sprite=Solid
value=""
description=""
type=ITEM_TYPE_NULL;


function init(item){
	if (item){
	name=item.name
	sprite=item.sprite;
	value=item.value;
	description=item.description;
	type=item.type

	}
}


function getDescription(){
	show_debug_message(description)
}
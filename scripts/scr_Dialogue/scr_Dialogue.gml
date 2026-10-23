function createDialogue(){
	if (instance_exists(obj_Dialogue)) { exit }
	return instance_create_layer(x, y, "Instances", obj_Dialogue)
}	
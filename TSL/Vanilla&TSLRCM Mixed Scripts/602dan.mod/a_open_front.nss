void main() {
	object oAo_door = GetObjectByTag("ao_door", 0);
	SetLocked(oAo_door, 1);
	AssignCommand(oAo_door, ActionOpenDoor(oAo_door));
}


void main() {
	object oHatch_103PERDoor = GetObjectByTag("Hatch_103PERDoor", 0);
	object o102PERDoor = GetObjectByTag("102PERDoor", 0);
	AssignCommand(o102PERDoor, ActionCloseDoor(o102PERDoor));
	SetLocked(o102PERDoor, 1);
	SetLocked(oHatch_103PERDoor, 0);
	AssignCommand(oHatch_103PERDoor, ActionOpenDoor(oHatch_103PERDoor));
}


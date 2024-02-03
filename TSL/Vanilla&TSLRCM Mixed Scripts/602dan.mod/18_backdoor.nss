void main() {
	object oDantooine_Door_4 = GetObjectByTag("Dantooine Door 4", 0);
	object object3 = GetObjectByTag("Dantooine Door 4", 1);
	ChangeToStandardFaction(oDantooine_Door_4, 5);
	ChangeToStandardFaction(object3, 5);
	AssignCommand(oDantooine_Door_4, ActionCloseDoor(oDantooine_Door_4));
	SetLocked(oDantooine_Door_4, 1);
	AssignCommand(object3, ActionCloseDoor(object3));
	SetLocked(object3, 1);
}


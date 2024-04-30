void main() {
	object oEntering = GetEnteringObject();
	if ((GetFirstPC() == oEntering)) {
		object oVisquisDoor = GetObjectByTag("VisquisDoor", 0);
		AssignCommand(oVisquisDoor, ClearAllActions());
		AssignCommand(oVisquisDoor, ActionCloseDoor(oVisquisDoor));
	}
}


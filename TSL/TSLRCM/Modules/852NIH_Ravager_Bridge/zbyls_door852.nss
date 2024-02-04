void main() {
	object oRavagerDoor99 = GetObjectByTag("RavagerDoor99", 0);
	if ((GetGlobalNumber("851NIH_Bomb_Ravager") == 3)) {
		SetLocked(oRavagerDoor99, 0);
		AssignCommand(oRavagerDoor99, ActionOpenDoor(oRavagerDoor99));
	}
}
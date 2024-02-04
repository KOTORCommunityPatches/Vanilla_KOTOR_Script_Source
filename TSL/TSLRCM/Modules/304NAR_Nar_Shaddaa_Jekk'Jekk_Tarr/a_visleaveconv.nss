void main() {
	object oVisquis = GetObjectByTag("Visquis", 0);
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	if ((GetGlobalNumber("304NAR_Visquis_Meet") == 3)) {
		if (GetIsObjectValid(oVisquis)) {
			object oVisquisDoor = GetObjectByTag("VisquisDoor", 0);
			SetLocked(oVisquisDoor, 0);
			SetLocalBoolean(OBJECT_SELF, 31, 1);
			AssignCommand(oVisquis, ClearAllActions());
			AssignCommand(oVisquis, ActionStartConversation(GetFirstPC(), "VisLeave", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
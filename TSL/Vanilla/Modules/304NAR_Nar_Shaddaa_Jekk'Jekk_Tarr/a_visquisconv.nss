void main() {
	object oVisquis = GetObjectByTag("Visquis", 0);
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("304NAR_Visquis_Meet") == 2)) {
		if (GetIsObjectValid(oVisquis)) {
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			object oVisquisDoor = GetObjectByTag("VisquisDoor", 0);
			SetLocked(oVisquisDoor, 0);
			AssignCommand(oVisquis, ClearAllActions());
			AssignCommand(oVisquis, ActionStartConversation(GetFirstPC(), "VisEnter", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	if ((GetGlobalNumber("300NAR_Bounty_Attack") != 2)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 31, 1);
	if (GetIsObjectValid(oVisquis)) {
		SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		SetPlayerRestrictMode(1);
		object object7 = GetObjectByTag("VisquisDoor", 0);
		SetLocked(object7, 0);
		AssignCommand(oVisquis, ClearAllActions());
		AssignCommand(oVisquis, ActionStartConversation(GetFirstPC(), "VisEnter", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

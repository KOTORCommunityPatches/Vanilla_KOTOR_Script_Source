void main() {
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 35)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 35, 1);
	SwitchPlayerCharacter((-1));
	AssignCommand(GetObjectByTag("DarthSion", 0), ActionStartConversation(GetFirstPC(), "903kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}


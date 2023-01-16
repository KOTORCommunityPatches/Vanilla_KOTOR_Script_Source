void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPC(oEntering))) {
		return;
	}
	if ((GetObjectByTag("Atton", 0) == oEntering)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 31, 1);
	object oTwilekDomo = GetObjectByTag("TwilekDomo", 0);
	AssignCommand(oEntering, ClearAllActions());
	AssignCommand(oTwilekDomo, ClearAllActions());
	AssignCommand(oTwilekDomo, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}


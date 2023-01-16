void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if (GetSpellAcquired(178, oEntering)) {
		SetKeepStealthInDialog(1);
		AssignCommand(oEntering, ActionStartConversation(OBJECT_SELF, "sencv", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(GetObjectByTag("xarga", 0), 41, 1);
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}


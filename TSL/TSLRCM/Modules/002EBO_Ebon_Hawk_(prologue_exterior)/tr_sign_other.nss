void main() {
	if ((!GetLocalBoolean(GetObjectByTag("lift_to_001", 0), 40))) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	SetLocalNumber(GetObjectByTag("SignSpeaker", 0), 20, 3);
	ActionStartConversation(oEntering, "sign", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
}
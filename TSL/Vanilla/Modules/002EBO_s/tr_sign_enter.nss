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
	string string1 = GetTag(OBJECT_SELF);
	int int3;
	if ((string1 == "tr_sign_port")) {
		int3 = 1;
	}
	else {
		if ((string1 == "tr_sign_starboard")) {
			int3 = 2;
		}
	}
	if ((int3 > 0)) {
		SetLocalNumber(GetObjectByTag("SignSpeaker", 0), 20, int3);
	}
	ActionStartConversation(GetNearestObjectByTag("SignSpeaker", oEntering, 1), "sign", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
}


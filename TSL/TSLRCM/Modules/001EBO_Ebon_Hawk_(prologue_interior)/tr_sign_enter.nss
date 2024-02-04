void main() {
	if ((!GetLocalBoolean(GetObjectByTag("tr_journal", 0), 40))) {
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
	if ((string1 == "tr_sign_main")) {
		int3 = 8;
	}
	else {
		if ((string1 == "tr_sign_garage")) {
			int3 = 7;
		}
		else {
			if ((string1 == "tr_sign_cargo")) {
				int3 = 6;
			}
			else {
				if ((string1 == "tr_sign_med")) {
					int3 = 5;
				}
				else {
					if ((string1 == "tr_sign_lift")) {
						int3 = 4;
					}
					else {
						if ((string1 == "tr_sign_stardorm")) {
							int3 = 3;
						}
						else {
							if ((string1 == "tr_sign_cockpit")) {
								int3 = 2;
							}
							else {
								if ((string1 == "tr_sign_engine")) {
									int3 = 1;
								}
							}
						}
					}
				}
			}
		}
	}
	if ((int3 > 0)) {
		SetLocalNumber(GetObjectByTag("SignSpeaker", 0), 20, int3);
	}
	ActionStartConversation(GetNearestObjectByTag("SignSpeaker", oEntering, 1), "extra", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
}
void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		object oTT32 = GetObjectByTag("TT32", 0);
		if ((!GetIsObjectValid(oTT32))) {
			return;
		}
		if ((GetGlobalNumber("301NAR_ID_Quest") == 1)) {
			AssignCommand(oTT32, ClearAllActions());
			AssignCommand(oTT32, ActionStartConversation(GetFirstPC(), "TT32", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			return;
		}
		object oTt32talk = GetObjectByTag("tt32talk", 0);
		if (GetIsObjectValid(oTt32talk)) {
			if (GetLocalBoolean(oTt32talk, 30)) {
				return;
			}
			else {
				SetLocalBoolean(oTt32talk, 30, 1);
				AssignCommand(oTT32, ClearAllActions());
				AssignCommand(oTT32, ActionStartConversation(GetFirstPC(), "TT32", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				return;
			}
		}
	}
}


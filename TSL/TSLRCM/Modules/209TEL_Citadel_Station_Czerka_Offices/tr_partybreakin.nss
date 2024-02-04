void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if ((GetGlobalNumber("203TEL_DroidInt_1") < 4)) {
		return;
	}
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 5)) {
		if (IsNPCPartyMember(0)) {
			object oAtton = GetObjectByTag("atton", 0);
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			SetLocalBoolean(oAtton, 37, 1);
			AssignCommand(oAtton, ClearAllActions());
			AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "203atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 4)) {
		if (IsNPCPartyMember(6)) {
			object oKreia = GetObjectByTag("kreia", 0);
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			SetLocalBoolean(oKreia, 37, 1);
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "203kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
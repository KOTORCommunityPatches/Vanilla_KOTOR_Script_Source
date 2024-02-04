void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 37)) {
		return;
	}
	if ((GetGlobalNumber("203TEL_Merc_Attack") == 2)) {
		SetLocalBoolean(OBJECT_SELF, 37, 1);
		if (IsNPCPartyMember(0)) {
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			AssignCommand(OBJECT_SELF, ClearAllActions());
			AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "mercfp", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			if (GetSpellAcquired(178, GetFirstPC())) {
				AssignCommand(OBJECT_SELF, ClearAllActions());
				AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "mercfp", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
		}
	}
}
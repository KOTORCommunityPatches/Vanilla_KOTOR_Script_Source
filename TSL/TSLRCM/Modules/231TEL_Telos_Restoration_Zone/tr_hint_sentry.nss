void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetEnteringObject() == GetPartyLeader())) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		if ((IsNPCPartyMember(1) == 1)) {
			SetGlobalNumber("231TEL_Atton", 3);
			object oBaoDur = GetObjectByTag("BaoDur", 0);
			AssignCommand(oBaoDur, ClearAllActions());
			AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "231bdur", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			if ((IsNPCPartyMember(0) == 1)) {
			}
		}
		object o231_D_SentryB = GetObjectByTag("231_D_SentryB", 0);
		DelayCommand(0.1, ChangeToStandardFaction(o231_D_SentryB, 1));
		DelayCommand(0.2, AssignCommand(o231_D_SentryB, ActionAttack(GetFirstPC(), 0)));
	}
}
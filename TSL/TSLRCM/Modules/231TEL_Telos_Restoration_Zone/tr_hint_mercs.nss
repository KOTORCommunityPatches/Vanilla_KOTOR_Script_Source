void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetEnteringObject() == GetPartyLeader())) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		if ((IsNPCPartyMember(1) == 1)) {
			SetGlobalNumber("231TEL_Atton", 2);
			object oBaoDur = GetObjectByTag("BaoDur", 0);
			AssignCommand(oBaoDur, ClearAllActions());
			AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "231bdur", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		object o231_D_SentryCut = GetObjectByTag("231_D_SentryCut", 0);
		DelayCommand(0.1, ChangeToStandardFaction(o231_D_SentryCut, 1));
		DelayCommand(0.2, AssignCommand(o231_D_SentryCut, ActionAttack(GetFirstPC(), 0)));
	}
}
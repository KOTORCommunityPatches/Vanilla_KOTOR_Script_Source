void main() {
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if ((GetEnteringObject() == GetPartyLeader())) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		object oBaoDur = GetObjectByTag("BaoDur", 0);
		SetGlobalNumber("231TEL_Atton", 4);
		object o231_D_SentryC = GetObjectByTag("231_D_SentryC", 0);
		DelayCommand(0.1, ChangeToStandardFaction(o231_D_SentryC, 1));
		DelayCommand(0.2, AssignCommand(o231_D_SentryC, ActionAttack(GetFirstPC(), 0)));
		AssignCommand(oBaoDur, ClearAllActions());
		AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "231bdur", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}


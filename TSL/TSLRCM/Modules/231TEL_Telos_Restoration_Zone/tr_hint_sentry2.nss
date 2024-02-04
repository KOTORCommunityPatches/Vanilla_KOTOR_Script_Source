void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((IsNPCPartyMember(0) == 1)) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		SetGlobalNumber("231TEL_Atton", 6);
		object oAtton = GetObjectByTag("Atton", 0);
		AssignCommand(oAtton, ClearAllActions());
		AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "231atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		object o231_D_SentryD = GetObjectByTag("231_D_SentryD", 0);
		DelayCommand(0.1, ChangeToStandardFaction(o231_D_SentryD, 1));
		DelayCommand(0.2, AssignCommand(o231_D_SentryD, ActionAttack(GetFirstPC(), 0)));
		return;
	}
	if ((IsNPCPartyMember(1) == 1)) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		SetGlobalNumber("231TEL_Atton", 6);
		object oBaoDur = GetObjectByTag("BaoDur", 0);
		AssignCommand(oBaoDur, ClearAllActions());
		AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "231bdur", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object object11 = GetObjectByTag("231_D_SentryD", 0);
	DelayCommand(0.1, ChangeToStandardFaction(object11, 1));
	DelayCommand(0.2, AssignCommand(object11, ActionAttack(GetFirstPC(), 0)));
}
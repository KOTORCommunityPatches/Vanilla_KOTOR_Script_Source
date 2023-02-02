void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if (((GetGlobalNumber("200TEL_Smuggling") == 9) || (GetGlobalNumber("200TEL_Sting") == 8))) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		object oAirlock3a = GetObjectByTag("Airlock3a", 0);
		AssignCommand(oAirlock3a, ActionCloseDoor(oAirlock3a));
		DelayCommand(0.1, AssignCommand(oAirlock3a, ActionLockObject(oAirlock3a)));
		SetLocalBoolean(GetObjectByTag("TermAirlock3", 0), 30, 0);
		CreateObject(1, "n_samhan", GetLocation(GetObjectByTag("wp_samhan_sp", 0)), 0);
		CreateObject(1, "n_czerkaguard003", GetLocation(GetObjectByTag("wp_czerkabay_sp", 0)), 0);
		object oCzerka_bay = GetObjectByTag("czerka_bay", 0);
		SetLocalBoolean(oCzerka_bay, 36, 1);
		object oPC = GetFirstPC();
		AssignCommand(oCzerka_bay, ClearAllActions());
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oCzerka_bay, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

void main() {
	object oPC = GetFirstPC();
	if ((GetGlobalNumber("298TEL_Com_Disabled") != 1)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	if ((GetGlobalNumber("298TEL_Com_Disabled") == 1)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ActionStartConversation(GetFirstPC(), "hk50com", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}


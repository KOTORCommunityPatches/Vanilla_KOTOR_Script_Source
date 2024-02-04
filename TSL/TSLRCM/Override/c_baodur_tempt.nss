int StartingConditional() {
	if (((((!GetGlobalNumber("403DXN_PARTY2_NPC1")) == 1) || ((!GetGlobalNumber("403DXN_PARTY2_NPC2")) == 1)) || ((!GetGlobalNumber("403DXN_PARTY2_NPC3")) == 1))) {
		return 0;
	}
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == GetGlobalNumber("411DXN_Tempt"))) {
		return 1;
	}
	else {
		return 0;
	}
}
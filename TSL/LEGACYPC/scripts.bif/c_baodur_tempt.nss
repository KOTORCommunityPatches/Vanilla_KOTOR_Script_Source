int StartingConditional() {
	if (((!GetGlobalNumber("411DXN_Tempt_NPC")) == 1)) {
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


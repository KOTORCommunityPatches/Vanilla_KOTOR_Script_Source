int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	int nGlobal = GetGlobalNumber("G_PC_Align_Val");
	int nLevel = GetHitDice(GetFirstPC());
	if (((nLevel >= nParam1) && ((nGlobal <= nParam2) || (nGlobal >= nParam3)))) {
		return 1;
	}
	else {
		return 0;
	}
}


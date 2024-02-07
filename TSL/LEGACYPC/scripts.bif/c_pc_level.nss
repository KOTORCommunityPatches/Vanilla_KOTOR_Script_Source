int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nLevel = GetHitDice(GetFirstPC());
	if ((nLevel >= nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}


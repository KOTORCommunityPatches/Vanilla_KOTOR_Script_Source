int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGold(GetFirstPC()) <= nParam1)) {
		return 1;
	}
	return 0;
}


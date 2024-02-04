int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if (((nParam1 == 1) && (GetGold(GetFirstPC()) >= 500))) {
		return 1;
	}
	if (((nParam1 == 0) && (GetGold(GetFirstPC()) < 500))) {
		return 1;
	}
	return 0;
}
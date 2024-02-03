int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if (GetSpellAcquired(nParam1, GetFirstPC())) {
		return 1;
	}
	return 0;
}


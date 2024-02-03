int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object oAtton = GetObjectByTag("atton", 0);
	if (GetSpellAcquired(nParam1, oAtton)) {
		return 1;
	}
	return 0;
}


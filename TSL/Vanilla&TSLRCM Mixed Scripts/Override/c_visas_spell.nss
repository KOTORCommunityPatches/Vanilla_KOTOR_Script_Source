int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	if (GetSpellAcquired(nParam1, oVisasMarr)) {
		return 1;
	}
	return 0;
}


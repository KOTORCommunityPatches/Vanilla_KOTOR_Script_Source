int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((GetAbilityScore(GetPCSpeaker(), 1) >= nParam1) && (GetAbilityScore(GetPCSpeaker(), 1) <= nParam2))) {
		return 1;
	}
	return 0;
}


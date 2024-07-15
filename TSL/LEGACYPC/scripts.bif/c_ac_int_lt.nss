int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetAbilityScore(GetPCSpeaker(), 3) < nParam1)) {
		return 1;
	}
	return 0;
}


int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object oHk47 = GetObjectByTag("hk47", 0);
	if ((GetSkillRank(5, oHk47) < nParam1)) {
		return 1;
	}
	return 0;
}
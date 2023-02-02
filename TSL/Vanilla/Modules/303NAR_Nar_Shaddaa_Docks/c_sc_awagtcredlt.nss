int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((GetSkillRank(3, GetPCSpeaker()) > nParam1) && (GetGold(GetFirstPC()) >= nParam2))) {
		return 1;
	}
	return 0;
}

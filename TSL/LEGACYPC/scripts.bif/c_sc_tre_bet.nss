int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((GetSkillRank(7, GetPCSpeaker()) >= nParam1) && (GetSkillRank(7, GetPCSpeaker()) <= nParam2))) {
		return 1;
	}
	return 0;
}


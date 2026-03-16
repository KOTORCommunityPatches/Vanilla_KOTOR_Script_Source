int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((GetSkillRank(4, GetPCSpeaker()) >= nParam1) && (GetSkillRank(4, GetPCSpeaker()) <= nParam2))) {
		return 1;
	}
	return 0;
}


int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetSkillRank(4, GetPCSpeaker()) == nParam1)) {
		return 1;
	}
	return 0;
}


int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((((GetAbilityScore(GetPCSpeaker(), 3) > nParam1) || GetLocalBoolean(OBJECT_SELF, 30)) || (GetSkillRank(0, GetPCSpeaker()) > nParam2))) {
		return 1;
	}
	return 0;
}
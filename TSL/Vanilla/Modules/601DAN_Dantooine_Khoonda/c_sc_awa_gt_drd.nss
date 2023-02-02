int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return 0;
	}
	if ((GetSkillRank(3, GetPCSpeaker()) > nParam1)) {
		return 1;
	}
	return 0;
}

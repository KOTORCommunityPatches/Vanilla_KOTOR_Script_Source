int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3 = GetSkillRankBase(nParam1, GetFirstPC());
	int int5 = 0;
	int int6 = 999;
	int int7 = 0;
	while ((int7 < 8)) {
		{
			int int8 = GetSkillRankBase(int7, GetFirstPC());
			if ((int8 < int6)) {
			int6 = int8;
			int5 = int7;
			}
		}
		(int7++);
	}
	if ((nParam1 == int5)) {
		return 1;
	}
	if ((int3 == int6)) {
		return 1;
	}
	return 0;
}


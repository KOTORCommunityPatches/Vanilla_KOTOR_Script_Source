void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	int int3;
	int int4;
	switch (nParam1) {
		case 1:
			int3 = GetSkillRankBase(3, oPC);
			break;
		case 2:
			int3 = GetSkillRankBase(7, oPC);
			break;
		case 3:
			int3 = GetSkillRankBase(5, oPC);
			break;
		case 4:
			int3 = GetSkillRankBase(1, oPC);
			break;
		case 5:
			int3 = GetSkillRankBase(2, oPC);
			break;
		case 6:
			int3 = GetSkillRankBase(0, oPC);
			break;
		case 7:
			int3 = GetSkillRankBase(4, oPC);
			break;
		case 8:
			int3 = GetSkillRankBase(6, oPC);
			break;
	}
	DelayCommand(0.2, SetGlobalNumber("000_SkillBest_Lvl", int3));
}


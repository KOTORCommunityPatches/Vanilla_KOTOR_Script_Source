void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	int int3;
	int int4;
	switch (nParam1) {
		case 9:
			int4 = GetSkillRankBase(3, oPC);
			break;
		case 10:
			int4 = GetSkillRankBase(7, oPC);
			break;
		case 11:
			int4 = GetSkillRankBase(5, oPC);
			break;
		case 12:
			int4 = GetSkillRankBase(1, oPC);
			break;
		case 13:
			int4 = GetSkillRankBase(2, oPC);
			break;
		case 14:
			int4 = GetSkillRankBase(0, oPC);
			break;
		case 15:
			int4 = GetSkillRankBase(4, oPC);
			break;
		case 16:
			int4 = GetSkillRankBase(6, oPC);
			break;
	}
	DelayCommand(0.2, SetGlobalNumber("000_SkillWorst_lvl", int4));
}
void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 2)) {
		GivePlotXP("M478_Plot_Base_XP", 50);
	}
	SetGlobalNumber("800DRO_Count_02", nParam1);
}
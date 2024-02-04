int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((nParam1 == 0) && (GetGlobalNumber("602DAN_Dopak_Quest") & nParam2))) {
		return 1;
	}
	if ((((nParam1 == 1) && (GetGlobalNumber("602DAN_Dopak_Quest") & 1)) && (!(GetGlobalNumber("602DAN_Dopak_Quest") & 4)))) {
		return 1;
	}
	if ((((nParam1 == 2) && (GetGlobalNumber("602DAN_Dopak_Quest") & 2)) && (!(GetGlobalNumber("602DAN_Dopak_Quest") & 16)))) {
		return 1;
	}
	return 0;
}
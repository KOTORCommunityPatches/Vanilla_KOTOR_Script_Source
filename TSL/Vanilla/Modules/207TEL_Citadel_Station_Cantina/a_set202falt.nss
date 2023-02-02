void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalNumber("202TEL_Falt", 1);
	}
	if ((nParam1 == 2)) {
		SetGlobalNumber("202TEL_Falt", 2);
	}
	if ((nParam1 == 3)) {
		SetGlobalNumber("202TEL_Falt", 3);
	}
	if ((nParam1 == 4)) {
		SetGlobalNumber("202TEL_Falt", 4);
	}
	if ((nParam1 == 5)) {
		TakeGoldFromCreature(1000, GetFirstPC(), 0);
		SetGlobalNumber("202TEL_Falt", 4);
	}
	if ((nParam1 == 6)) {
		TakeGoldFromCreature(500, GetFirstPC(), 0);
		SetGlobalNumber("202TEL_Falt", 4);
	}
	if ((nParam1 == 7)) {
		TakeGoldFromCreature(300, GetFirstPC(), 0);
		SetGlobalNumber("202TEL_Falt", 4);
	}
}

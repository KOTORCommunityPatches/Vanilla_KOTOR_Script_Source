int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if (((nParam1 == 1) && (GetGlobalNumber("403DXN_Price_Passage") == 1))) {
		return 1;
	}
	if ((((nParam1 == 2) && (!GetLocalBoolean(OBJECT_SELF, 42))) && (GetGlobalNumber("403DXN_TechSupport") == 4))) {
		SetLocalBoolean(OBJECT_SELF, 42, 1);
		return 1;
	}
	if ((((nParam1 == 3) && (!GetLocalBoolean(OBJECT_SELF, 43))) && (GetGlobalNumber("403DXN_Zakkeg_Ch") == 3))) {
		SetLocalBoolean(OBJECT_SELF, 43, 1);
		return 1;
	}
	if ((((nParam1 == 4) && (!GetLocalBoolean(OBJECT_SELF, 44))) && (GetGlobalNumber("403DXN_CannokTrouble") == 5))) {
		SetLocalBoolean(OBJECT_SELF, 44, 1);
		return 1;
	}
	if ((nParam1 == 15)) {
		return 1;
	}
	return 0;
}
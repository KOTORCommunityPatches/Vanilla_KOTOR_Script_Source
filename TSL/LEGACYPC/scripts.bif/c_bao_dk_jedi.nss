int StartingConditional() {
	int int1 = 1;
	int int2 = 11;
	int int3 = 89;
	if (((GetInfluence(int1) <= int3) && (GetInfluence(int1) >= int2))) {
		return 0;
	}
	int int6 = 49;
	if ((GetGlobalNumber("G_PC_Align_Val") > int6)) {
		return 0;
	}
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, 35);
	if (nLocalBool) {
		return 0;
	}
	return 1;
}


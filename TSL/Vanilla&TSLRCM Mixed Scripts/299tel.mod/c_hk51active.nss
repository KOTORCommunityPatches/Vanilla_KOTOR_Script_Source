int StartingConditional() {
	int nGlobal = GetGlobalNumber("299TEL_HK51");
	int int3 = GetGlobalNumber("299TEL_HK51_Active");
	if (((nGlobal < 2) && (int3 > 0))) {
		return 1;
	}
	else {
		return 0;
	}
}


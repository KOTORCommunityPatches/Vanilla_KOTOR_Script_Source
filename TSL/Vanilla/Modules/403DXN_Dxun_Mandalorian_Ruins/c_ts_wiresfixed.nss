int StartingConditional() {
	if (((GetGlobalNumber("403DXN_TechSupport") < 3) && (GetGlobalNumber("403DXN_TS_Wires") == 1))) {
		return 1;
	}
	return 0;
}


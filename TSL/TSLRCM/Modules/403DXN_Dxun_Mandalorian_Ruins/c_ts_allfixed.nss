int StartingConditional() {
	if ((GetGlobalNumber("403DXN_TechSupport") == 3)) {
		return 1;
	}
	return 0;
}
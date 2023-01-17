int StartingConditional() {
	if ((GetGlobalNumber("403DXN_Missing_Mand") < 3)) {
		return 1;
	}
	return 0;
}


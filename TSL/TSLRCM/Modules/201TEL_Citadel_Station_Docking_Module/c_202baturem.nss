int StartingConditional() {
	if ((GetGlobalNumber("202TEL_BatuRem") == 2)) {
		return 1;
	}
	else {
		return 0;
	}
}
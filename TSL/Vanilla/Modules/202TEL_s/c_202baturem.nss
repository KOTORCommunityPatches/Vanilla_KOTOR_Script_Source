int StartingConditional() {
	if ((GetGlobalNumber("202TEL_BatuRem") == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}


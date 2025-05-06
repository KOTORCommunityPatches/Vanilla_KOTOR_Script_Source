int StartingConditional() {
	if ((((GetGlobalNumber("101PER_Atton_Intro_1") == 1) & (GetGlobalNumber("101PER_Atton_Intro_2") == 1)) & GetGlobalNumber("101PER_Atton_Intro_3"))) {
		return 1;
	}
	return 0;
}


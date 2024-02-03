int StartingConditional() {
	if ((((GetGlobalNumber("200TEL_SmugglingM1") == 1) && (GetGlobalNumber("203TEL_B-4D4_PC") == 0)) && (GetGlobalNumber("200TEL_Sting") != 11))) {
		return 1;
	}
	return 0;
}


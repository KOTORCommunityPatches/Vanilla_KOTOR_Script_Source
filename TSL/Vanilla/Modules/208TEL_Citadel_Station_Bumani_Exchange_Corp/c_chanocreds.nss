int StartingConditional() {
	if (((GetGlobalNumber("202TEL_Falt") == 4) && (GetGlobalNumber("203TEL_Chano") < 3))) {
		return 1;
	}
	else {
		return 0;
	}
}

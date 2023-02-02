int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		if ((((GetGlobalNumber("601DAN_Side") == 1) && (GetGlobalNumber("602DAN_End") == 1)) && (GetGlobalNumber("604DAN_Vrook_Status") == 3))) {
			return 1;
		}
	}
	else {
		if ((nParam1 == 2)) {
			if ((((GetGlobalNumber("601DAN_Side") == 1) && (GetGlobalNumber("602DAN_End") == 2)) && (GetGlobalNumber("604DAN_Vrook_Status") == 3))) {
				return 1;
			}
		}
	}
	return 0;
}

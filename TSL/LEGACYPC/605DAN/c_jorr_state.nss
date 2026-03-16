int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((nParam1 == 0) && (GetGlobalNumber("610DAN_Jorran_Jerk") == nParam2))) {
		return 1;
	}
	if (((nParam1 == 1) && (GetGlobalNumber("610DAN_Jorran_Salvage") == nParam2))) {
		return 1;
	}
	if (((nParam1 == 2) && (GetGlobalNumber("605DAN_Daraala_Ghosts") == nParam2))) {
		return 1;
	}
	return 0;
}


int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("203TEL_Czerka_Attack") == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}


int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}
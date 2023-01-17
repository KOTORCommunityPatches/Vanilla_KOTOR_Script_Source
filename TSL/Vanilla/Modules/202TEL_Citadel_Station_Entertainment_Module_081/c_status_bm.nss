int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("202_BlackMarket") == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}


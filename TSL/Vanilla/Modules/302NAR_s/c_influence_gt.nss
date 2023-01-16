int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((GetInfluence(nParam1) > nParam2)) {
		return 1;
	}
	else {
		return 0;
	}
}


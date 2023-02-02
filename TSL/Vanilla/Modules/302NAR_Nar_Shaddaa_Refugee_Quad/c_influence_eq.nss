int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((nParam2 == GetInfluence(nParam1))) {
		return 1;
	}
	else {
		return 0;
	}
}

int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((!GetLocalBoolean(OBJECT_SELF, nParam1))) {
		if ((GetInfluence(2) >= 90)) {
			return 1;
		}
	}
	return 0;
}


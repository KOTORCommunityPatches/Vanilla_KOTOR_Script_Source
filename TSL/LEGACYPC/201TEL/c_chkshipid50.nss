int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Republic_ID");
	int nParam1 = GetScriptParameter(1);
	if (((nGlobal == 0) || GetLocalBoolean(OBJECT_SELF, nParam1))) {
		return 0;
	}
	else {
		return 1;
	}
}


int StartingConditional() {
	int nLocalBool;
	int nParam1 = GetScriptParameter(1);
	nLocalBool = GetLocalBoolean(GetObjectByTag("203_Bed", 0), 50);
	if ((nLocalBool == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}

int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3 = GetGender(GetFirstPC());
	if ((((GetGlobalNumber("105PER_T3_End") == 2) && (!GetLocalBoolean(OBJECT_SELF, nParam1))) && (int3 == 1))) {
		SetLocalBoolean(OBJECT_SELF, nParam1, 1);
		return 1;
	}
	return 0;
}


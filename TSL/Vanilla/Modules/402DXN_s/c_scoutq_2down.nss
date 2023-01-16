int StartingConditional() {
	int nGlobal = GetGlobalNumber("402DXN_ScoutHunt");
	int int3 = GetGlobalNumber("402DXN_Scouts_Dead");
	if (((nGlobal == 3) && (int3 >= 6))) {
		string string1 = "403DXN_Price_Passage";
		SetGlobalNumber(string1, (GetGlobalNumber(string1) + 1));
		return 1;
	}
	return 0;
}


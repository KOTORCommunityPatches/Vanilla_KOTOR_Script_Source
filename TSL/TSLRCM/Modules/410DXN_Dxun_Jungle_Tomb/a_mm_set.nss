void main() {
	int nParam1 = GetScriptParameter(1);
	SetGlobalNumber("403DXN_Missing_Mand", nParam1);
	if ((nParam1 == 4)) {
		string string1 = "403DXN_Price_Passage";
		SetGlobalNumber(string1, (GetGlobalNumber(string1) + 1));
	}
}
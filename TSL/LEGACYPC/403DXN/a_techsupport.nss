void main() {
	int nParam1 = GetScriptParameter(1);
	string string1 = "403DXN_TechSupport";
	if (((nParam1 == 1) && (GetGlobalNumber(string1) != 0))) {
		nParam1 = (GetGlobalNumber(string1) + 1);
	}
	SetGlobalNumber("403DXN_TechSupport", nParam1);
}


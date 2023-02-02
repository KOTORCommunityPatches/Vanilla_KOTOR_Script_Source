void main() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("403DXN_Missing_Mand") < nParam1)) {
		AurPostString(("Setting Missing_Mand to " + IntToString(nParam1)), 5, 5, 5.0);
		SetGlobalNumber("403DXN_Missing_Mand", nParam1);
	}
	else {
		AurPostString("Not setting Missing_Mand", 5, 5, 5.0);
	}
	if ((nParam1 == 4)) {
		string string2 = "403DXN_Price_Passage";
		SetGlobalNumber(string2, (GetGlobalNumber(string2) + 1));
	}
}

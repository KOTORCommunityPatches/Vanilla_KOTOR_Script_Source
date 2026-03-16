void main() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("602DAN_Mili_Recruit");
	SetGlobalNumber("602DAN_Mili_Recruit", (nGlobal | nParam1));
	AurPostString(("Recruit: " + IntToString((nGlobal | nParam1))), 5, 5, 2.0);
}


void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	string string1 = "602DAN_Dopak_Quest";
	SetGlobalNumber(string1, (GetGlobalNumber(string1) | nParam2));
	AurPostString(("Dopak Quest = " + IntToString(GetGlobalNumber(string1))), 5, 5, 2.0);
}


void main() {
	string sParam = GetScriptStringParameter();
	string string3 = (("Current Value of" + sParam) + " is:");
	AurPostString((string3 + IntToString(GetGlobalNumber(sParam))), 5, 15, 10.0);
}
void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	SetGlobalNumber(sParam, (GetGlobalNumber(sParam) - nParam1));
}


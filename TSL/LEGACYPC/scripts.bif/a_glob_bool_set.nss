void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		SetGlobalBoolean(sParam, 0);
	}
	else {
		SetGlobalBoolean(sParam, 1);
	}
}


void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	SetLocalBoolean(GetObjectByTag(sParam, 0), nParam1, 1);
}


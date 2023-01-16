void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	SetMapPinEnabled(GetObjectByTag(sParam, 0), nParam1);
}


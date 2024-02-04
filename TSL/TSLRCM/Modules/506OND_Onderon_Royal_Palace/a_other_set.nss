void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int int5;
	if ((nParam2 == (-1))) {
		int5 = 0;
	}
	else {
		int5 = 1;
	}
	SetLocalBoolean(GetObjectByTag(sParam, 0), nParam1, int5);
}
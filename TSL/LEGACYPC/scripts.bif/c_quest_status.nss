int StartingConditional() {
	int nParam1;
	int nParam3;
	int nParam4;
	int nParam5;
	int int5;
	int int6;
	string sParam = GetScriptStringParameter();
	string string3;
	if ((sParam == "")) {
		string3 = IntToString(GetScriptParameter(1));
		nParam1 = GetScriptParameter(2);
		nParam3 = GetScriptParameter(3);
		nParam4 = GetScriptParameter(4);
		nParam5 = GetScriptParameter(5);
		int5 = 9999;
	}
	else {
		string3 = sParam;
		nParam1 = GetScriptParameter(1);
		nParam3 = GetScriptParameter(2);
		nParam4 = GetScriptParameter(3);
		nParam5 = GetScriptParameter(4);
		int5 = GetScriptParameter(5);
	}
	if ((nParam3 == 0)) {
		nParam3 = 9999;
	}
	if ((nParam4 == 0)) {
		nParam4 = 9999;
	}
	if ((nParam5 == 0)) {
		nParam5 = 9999;
	}
	if ((int5 == 0)) {
		int5 = 9999;
	}
	int6 = GetJournalEntry(string3);
	if ((nParam1 == 0)) {
		return GetJournalEntry(string3);
	}
	if ((nParam1 == (-1))) {
		return (!GetJournalEntry(string3));
	}
	return (((((nParam1 == int6) || (nParam3 == int6)) || (nParam4 == int6)) || (nParam5 == int6)) || (int5 == int6));
}


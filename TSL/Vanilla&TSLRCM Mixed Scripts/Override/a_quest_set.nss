void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	AddJournalQuestEntry(sParam, nParam1, nParam2);
}


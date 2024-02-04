void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	AddJournalQuestEntry(sParam, nParam1, 1);
}
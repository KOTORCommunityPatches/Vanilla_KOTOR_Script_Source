void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AddJournalQuestEntry("czerkacall", 50, 0);
	}
	else {
		if ((nParam1 == 2)) {
			AddJournalQuestEntry("caller", 50, 0);
		}
	}
}

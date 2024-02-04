void main() {
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 4)) {
		AddJournalQuestEntry("IthDip", 25, 0);
		AddJournalQuestEntry("luxa", 40, 0);
		SetGlobalNumber("203TEL_Exchange_M", 2);
		SetGlobalNumber("203TEL_Habat", 7);
	}
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 5)) {
		AddJournalQuestEntry("luxa", 40, 0);
		SetGlobalNumber("200TEL_CzerkaM_Exch", 20);
	}
}
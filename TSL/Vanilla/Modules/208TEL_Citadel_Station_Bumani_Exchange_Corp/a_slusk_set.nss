void main() {
	AurPostString("a_slusk_set: Entered", 15, 18, 10.0);
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 4)) {
		AurPostString("a_slusk_set: Ithorian Branch", 15, 19, 10.0);
		AddJournalQuestEntry("IthDip", 25, 0);
		AddJournalQuestEntry("luxa", 40, 0);
		SetGlobalNumber("203TEL_Exchange_M", 2);
		SetGlobalNumber("203TEL_Habat", 7);
	}
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 5)) {
		AurPostString("a_slusk_set: Czerka Branch", 15, 19, 10.0);
		AddJournalQuestEntry("luxa", 40, 0);
		SetGlobalNumber("200TEL_CzerkaM_Exch", 20);
	}
}

void main() {
	int int1;
	if ((GetGlobalNumber("500OND_Civil_War") > 1)) {
		int1 = 1;
	}
	else {
		int1 = 0;
	}
	int int3;
	if ((GetGlobalNumber("602DAN_End") > 0)) {
		int3 = 1;
	}
	else {
		int3 = 0;
	}
	int nGlobal = GetGlobalNumber("301NAR_Geeda_Dxn");
	int int7 = GetGlobalNumber("301NAR_Geeda_Dan");
	int int9 = GetJournalEntry("NewTradeRoutes");
	if ((int9 == 0)) {
		return;
	}
	if (((nGlobal == 1) && (int7 == 1))) {
		AddJournalQuestEntry("NewTradeRoutes", 33, 0);
		return;
	}
	if ((nGlobal == 1)) {
		AddJournalQuestEntry("NewTradeRoutes", 13, 1);
		return;
	}
	if ((int7 == 1)) {
		AddJournalQuestEntry("NewTradeRoutes", 31, 0);
		return;
	}
	if (((int3 == 1) && (int1 == 1))) {
		AddJournalQuestEntry("NewTradeRoutes", 22, 0);
		return;
	}
	if ((int3 == 1)) {
		AddJournalQuestEntry("NewTradeRoutes", 21, 0);
		return;
	}
	if ((int1 == 1)) {
		AddJournalQuestEntry("NewTradeRoutes", 12, 0);
		return;
	}
	AddJournalQuestEntry("NewTradeRoutes", 11, 0);
}


void main() {
	int nGlobal = GetGlobalNumber("303NAR_Dancer");
	switch (nGlobal) {
		case 1:
			AddJournalQuestEntry("dancer", 23, 0);
			break;
		case 2:
			AddJournalQuestEntry("dancer", 21, 0);
			break;
		case 3:
			AddJournalQuestEntry("dancer", 22, 0);
			break;
		default:
			AurPostString("Error setting Dancer Journal Entry", 13, 13, 10.0);
			break;
	}
}


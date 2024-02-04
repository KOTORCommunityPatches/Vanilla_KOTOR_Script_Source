void main() {
	if ((!GetLocalBoolean(GetObjectByTag("sec_terminal51", 0), 37))) {
		if ((GetGlobalNumber("299TEL_HK51_Core") != 0)) {
			SetGlobalNumber("299TEL_HK51_Core", 0);
			RemoveJournalQuestEntry("generation51");
			AddJournalQuestEntry("generation51", 69, 0);
		}
	}
	if (GetLocalBoolean(GetObjectByTag("sec_terminal51", 0), 37)) {
		if ((GetGlobalNumber("299TEL_HK51_Core") != 1)) {
			SetGlobalNumber("299TEL_HK51_Core", 1);
			AddJournalQuestEntry("generation51", 70, 0);
		}
	}
	if (GetLocalBoolean(GetObjectByTag("sec_terminal51", 0), 39)) {
		SetGlobalNumber("299TEL_HK51", 4);
		AddJournalQuestEntry("generation51", 105, 0);
		AddJournalQuestEntry("telosfactory", 71, 0);
		if ((GetGlobalNumber("299TEL_HK50") == 4)) {
			AddJournalQuestEntry("telosfactory", 80, 0);
		}
	}
}
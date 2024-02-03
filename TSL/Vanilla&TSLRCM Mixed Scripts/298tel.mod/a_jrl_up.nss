void main() {
	AddJournalQuestEntry("telosfactory", 100, 0);
	if ((GetGlobalNumber("299TEL_HK51_Active") == 3)) {
		if ((GetGlobalNumber("299TEL_HK51_Core") == 1)) {
			if ((GetGlobalNumber("299TEL_HK51") == 2)) {
				AddJournalQuestEntry("generation51", 130, 0);
			}
		}
		if ((GetGlobalNumber("299TEL_HK51_Core") == 0)) {
			if ((GetGlobalNumber("299TEL_HK51") == 3)) {
				AddJournalQuestEntry("generation51", 120, 0);
			}
			if ((GetGlobalNumber("299TEL_HK51") == 2)) {
				AddJournalQuestEntry("generation51", 110, 0);
			}
		}
	}
}


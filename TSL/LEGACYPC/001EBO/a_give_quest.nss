void main() {
	object oTr_journal = GetObjectByTag("tr_journal", 0);
	if ((!GetLocalBoolean(oTr_journal, 41))) {
		SetLocalBoolean(oTr_journal, 41, 1);
		if ((GetJournalEntry("tutorial_fix_ebo") == 0)) {
			AddJournalQuestEntry("tutorial_fix_ebo", 10, 0);
		}
		if ((GetJournalEntry("tutorial_heal_pc") == 0)) {
			if (GetGlobalBoolean("000_PLAYER_GENDER")) {
				AddJournalQuestEntry("tutorial_heal_pc", 10, 0);
			}
			else {
				AddJournalQuestEntry("tutorial_heal_pc", 11, 0);
			}
		}
		DelayCommand(0.5, AssignCommand(GetObjectByTag("Galaxymap", 0), ActionStartConversation(GetFirstPC(), "journal", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}


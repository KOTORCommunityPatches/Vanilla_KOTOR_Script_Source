void main() {
	if ((GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "G_I_TRAPKIT004")) && (GetGlobalNumber("002EBO_Has_Mine") == 0))) {
		SetGlobalNumber("002EBO_Has_Mine", 1);
		if ((GetJournalEntry("tutorial_fix_ebo") < 30)) {
			AddJournalQuestEntry("tutorial_fix_ebo", 30, 0);
		}
	}
}

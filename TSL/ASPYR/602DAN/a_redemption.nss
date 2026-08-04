void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		if (((GetJournalEntry("redemption") > 0) && (GetJournalEntry("redemption") < 90))) {
			AddJournalQuestEntry("redemption", 90, 1);
		}
	}
	else {
		if ((nParam1 == 1)) {
			if (((GetJournalEntry("redemption") > 0) && (GetJournalEntry("redemption") < 90))) {
				AddJournalQuestEntry("redemption", 91, 1);
			}
		}
	}
	AurPostString("Redemption Completed", 5, 5, 2.0);
}


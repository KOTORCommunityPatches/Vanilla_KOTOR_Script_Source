void main() {
	int int1 = GetJournalEntry("ghostrest");
	if (((int1 != 30) && (int1 != 31))) {
		if ((int1 > 0)) {
			AddJournalQuestEntry("ghostrest", 31, 0);
		}
		else {
			AddJournalQuestEntry("ghostrest", 30, 0);
		}
		CreateItemOnObject("qu_deadsalvager1", GetFirstPC(), 1, 0);
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
	}
	else {
		CreateItemOnObject("qu_deadsalvager1", GetFirstPC(), 1, 0);
		SetKeepStealthInDialog(1);
		ActionStartConversation(GetFirstPC(), "fakewill", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
}

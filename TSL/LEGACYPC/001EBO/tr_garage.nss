void main() {
	object oTr_garage = GetObjectByTag("tr_garage", 0);
	if ((!GetLocalBoolean(oTr_garage, 40))) {
		SetLocalBoolean(oTr_garage, 40, 1);
		AddJournalQuestEntry("tutorial_garage", 20, 0);
	}
}


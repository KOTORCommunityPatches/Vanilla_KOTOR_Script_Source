void main() {
	if ((!GetLocalBoolean(GetObjectByTag("To_605", 0), 41))) {
		AddJournalQuestEntry("relicpast", 90, 0);
		SetLocalBoolean(GetObjectByTag("To_605", 0), 41, 1);
		ChangeToStandardFaction(GetObjectByTag("Disciple", 0), 5);
	}
}


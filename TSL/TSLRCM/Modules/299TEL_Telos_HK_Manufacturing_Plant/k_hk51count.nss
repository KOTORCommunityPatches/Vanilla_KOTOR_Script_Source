void main() {
	object oHK50cut2 = GetObjectByTag("HK50cut2", 0);
	object oHK501 = GetObjectByTag("HK501", 0);
	object oHK502 = GetObjectByTag("HK502", 0);
	if ((GetGlobalNumber("299TEL_HK51_Active") == 3)) {
		if ((GetGlobalNumber("299TEL_HK51_Core") == 0)) {
			if ((GetLocalNumber(OBJECT_SELF, 28) == 16)) {
				AddJournalQuestEntry("generation51", 100, 0);
				DelayCommand(0.5, RemoveHeartbeat(OBJECT_SELF));
			}
		}
	}
	else {
		return;
	}
}
void main() {
	int int1 = GetJournalEntry("30005");
	int int3 = GetJournalEntry("30004");
	int int5 = GetJournalEntry("30003");
	object oGeriel = GetObjectByTag("geriel", 0);
	SetMaxHitPoints(oGeriel, GetMaxHitPoints(oGeriel));
	if (((int1 == 11) && (int3 != 0))) {
		AddJournalQuestEntry("30004", 31, 1);
		if ((int5 == 22)) {
			AddJournalQuestEntry("30004", 41, 0);
		}
		object oExchangeThug302_1 = GetObjectByTag("ExchangeThug302_1", 0);
		object oExchangeThug302_2 = GetObjectByTag("ExchangeThug302_2", 0);
		if (GetIsObjectValid(oExchangeThug302_1)) {
			DestroyObject(oExchangeThug302_1, 0.0, 0, 0.0, 0);
		}
		if (GetIsObjectValid(oExchangeThug302_2)) {
			DestroyObject(oExchangeThug302_2, 0.0, 0, 0.0, 0);
		}
	}
}

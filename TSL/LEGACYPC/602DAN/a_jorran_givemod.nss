void main() {
	int nParam1 = GetScriptParameter(1);
	object object1 = GetItemPossessedBy(OBJECT_SELF, "g_i_evap_mod");
	ActionTakeItem(object1, OBJECT_SELF);
	CreateItemOnObject("g_i_evap_mod", GetFirstPC(), 1, 0);
	switch (nParam1) {
		case 0:
			AddJournalQuestEntry("danthief", 40, 0);
			break;
		case 1:
			GiveGoldToCreature(GetFirstPC(), 500);
			AddJournalQuestEntry("danthief", 50, 0);
			break;
		case 2:
			AddJournalQuestEntry("danthief", 40, 0);
			TakeGoldFromCreature(500, GetFirstPC(), 0);
			break;
		case 3:
			AddJournalQuestEntry("danthief", 40, 0);
			TakeGoldFromCreature(250, GetFirstPC(), 0);
			break;
	}
}


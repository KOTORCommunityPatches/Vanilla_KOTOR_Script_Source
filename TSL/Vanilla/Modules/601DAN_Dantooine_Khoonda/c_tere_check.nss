int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object oNpc_terena = GetObjectByTag("npc_terena", 0);
	int int3;
	switch (nParam1) {
		case 0:
			int3 = GetJournalEntry("khoondad");
			if ((((int3 > 0) && (int3 < 90)) && (!GetLocalBoolean(oNpc_terena, 40)))) {
				return 1;
			}
			break;
		case 1:
			int3 = GetJournalEntry("khoondad");
			if ((((int3 > 0) && (int3 < 90)) && GetLocalBoolean(oNpc_terena, 40))) {
				return 1;
			}
			break;
	}
	return 0;
}

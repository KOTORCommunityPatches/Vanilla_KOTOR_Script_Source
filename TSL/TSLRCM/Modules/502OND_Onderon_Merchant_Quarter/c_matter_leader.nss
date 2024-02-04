int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3 = GetJournalEntry("matter_leader");
	switch (nParam1) {
		case 0:
			if ((int3 == 10)) {
				return 1;
			}
			break;
		case 1:
			if (((int3 == 20) && (!GetLocalBoolean(OBJECT_SELF, 55)))) {
				SetLocalBoolean(OBJECT_SELF, 55, 1);
				GiveGoldToCreature(GetFirstPC(), 2500);
				return 1;
			}
			break;
		case 2:
			if (((int3 == 30) && (!GetLocalBoolean(OBJECT_SELF, 56)))) {
				SetLocalBoolean(OBJECT_SELF, 56, 1);
				GiveGoldToCreature(GetFirstPC(), 2500);
				if ((!GetLocalBoolean(OBJECT_SELF, 55))) {
					SetLocalBoolean(OBJECT_SELF, 55, 1);
					GiveGoldToCreature(GetFirstPC(), 2500);
				}
				return 1;
			}
			break;
		case 3:
			if (((int3 == 40) && (!GetLocalBoolean(OBJECT_SELF, 57)))) {
				SetLocalBoolean(OBJECT_SELF, 57, 1);
				GiveGoldToCreature(GetFirstPC(), 2500);
				if ((!GetLocalBoolean(OBJECT_SELF, 56))) {
					SetLocalBoolean(OBJECT_SELF, 56, 1);
					GiveGoldToCreature(GetFirstPC(), 2500);
				}
				if ((!GetLocalBoolean(OBJECT_SELF, 55))) {
					SetLocalBoolean(OBJECT_SELF, 55, 1);
					GiveGoldToCreature(GetFirstPC(), 2500);
				}
				return 1;
			}
			break;
		case 4:
			if ((int3 > 0)) {
				return 1;
			}
			break;
		case 5:
			if (GetLocalBoolean(GetObjectByTag("g_riiken", 0), 52)) {
				return 1;
			}
			break;
	}
	return 0;
}
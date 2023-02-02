int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			if ((GetGlobalNumber("403DXN_Sith_Attack") == nParam2)) {
				return 1;
			}
			break;
		case 1:
			if (GetIsObjectValid(GetObjectByTag("npc_kelborn", 0))) {
				return 1;
			}
			break;
		case 2:
			if ((GetObjectByTag("kumus", 0) != OBJECT_INVALID)) {
				return 1;
			}
			break;
		case 3:
			if ((GetObjectByTag("npc_davrel", 0) != OBJECT_INVALID)) {
				return 1;
			}
			break;
		case 4:
			if ((GetGlobalNumber("403DXN_Sith_Attack") < 4)) {
				return 1;
			}
			break;
		case 5:
			if ((GetGlobalNumber("403DXN_Sith_Attack") == 5)) {
				return 1;
			}
			break;
	}
	return 0;
}

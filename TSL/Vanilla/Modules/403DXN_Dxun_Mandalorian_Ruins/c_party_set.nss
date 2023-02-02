int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 4:
			if ((GetNPCSelectability(4) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 4) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 4))) {
					return 1;
				}
			}
			break;
		case 11:
			if ((GetNPCSelectability(11) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 11) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 11))) {
					return 1;
				}
			}
			break;
		case 7:
			if ((GetNPCSelectability(7) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 7) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 7))) {
					return 1;
				}
			}
			break;
		case 9:
			if ((GetNPCSelectability(9) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 9) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 9))) {
					return 1;
				}
			}
			break;
		case 0:
			if ((GetNPCSelectability(0) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 0) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 0))) {
					return 1;
				}
			}
			break;
		case 1:
			if ((GetNPCSelectability(1) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 1) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 1))) {
					return 1;
				}
			}
			break;
		case 2:
			if ((GetNPCSelectability(2) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 2) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 2))) {
					return 1;
				}
			}
			break;
		case 3:
			if ((GetNPCSelectability(3) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 3) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 3))) {
					return 1;
				}
			}
			break;
		case 10:
			if ((GetNPCSelectability(10) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 10) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 10))) {
					return 1;
				}
			}
			break;
		case 5:
			if ((GetNPCSelectability(5) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 5) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 5))) {
					return 1;
				}
			}
			break;
		case 8:
			if ((GetNPCSelectability(8) >= 0)) {
				if (((GetGlobalNumber("403DXN_PARTY2_NPC1") != 8) && (GetGlobalNumber("403DXN_PARTY2_NPC2") != 8))) {
					return 1;
				}
			}
			break;
	}
	return 0;
}

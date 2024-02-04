int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 4:
			if ((GetNPCSelectability(4) >= 0)) {
				return 1;
			}
			break;
		case 11:
			if ((GetNPCSelectability(11) >= 0)) {
				return 1;
			}
			break;
		case 7:
			if ((GetNPCSelectability(7) >= 0)) {
				return 1;
			}
			break;
		case 9:
			if ((GetNPCSelectability(9) >= 0)) {
				return 1;
			}
			break;
		case 0:
			if ((GetNPCSelectability(0) >= 0)) {
				return 1;
			}
			break;
		case 1:
			if ((GetNPCSelectability(1) >= 0)) {
				return 1;
			}
			break;
		case 2:
			if ((GetNPCSelectability(2) >= 0)) {
				return 1;
			}
			break;
		case 3:
			if ((GetNPCSelectability(3) >= 0)) {
				return 1;
			}
			break;
		case 10:
			if ((GetNPCSelectability(10) >= 0)) {
				return 1;
			}
			break;
		case 5:
			if ((GetNPCSelectability(5) >= 0)) {
				return 1;
			}
			break;
		case 8:
			if ((GetNPCSelectability(8) >= 0)) {
				return 1;
			}
			break;
	}
	return 0;
}
int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	int int4 = GetClassByPosition(2, GetFirstPC());
	int int6 = GetClassByPosition(1, GetFirstPC());
	int nGlobal = GetGlobalNumber("G_PC_FORM");
	int int10;
	object oPC = GetFirstPC();
	if ((int4 == 255)) {
		switch (int6) {
			case 3:
				switch (nGlobal) {
					case 0:
						int10 = 261;
						break;
					case 1:
						int10 = 262;
						break;
					case 2:
						int10 = 264;
						break;
				}
				break;
			case 4:
				if ((nGlobal == 0)) {
					if ((GetGoodEvilValue(oPC) < 50)) {
						int10 = 266;
					}
					else {
						int10 = 267;
					}
				}
				if ((nGlobal == 1)) {
					if ((GetGoodEvilValue(oPC) < 50)) {
						if ((!GetSpellAcquired(266, oPC))) {
							int10 = 266;
						}
						else {
							int10 = 267;
						}
					}
					else {
						if ((!GetSpellAcquired(267, oPC))) {
							int10 = 267;
						}
						else {
							int10 = 266;
						}
					}
				}
				if ((nGlobal == 2)) {
					int10 = 268;
				}
				break;
			case 5:
				switch (nGlobal) {
					case 0:
						int10 = 262;
						break;
					case 1:
						int10 = 261;
						break;
					case 2:
						int10 = 263;
						break;
				}
				break;
		}
	}
	else {
		if ((int4 == 11)) {
			if ((nGlobal == 0)) {
				int10 = 261;
			}
			if ((nGlobal == 1)) {
				if ((!GetSpellAcquired(261, oPC))) {
					int10 = 261;
				}
				else {
					int10 = 262;
				}
			}
			if ((nGlobal == 2)) {
				int10 = 264;
			}
		}
		if (((int4 == 12) || (int4 == 15))) {
			if ((nGlobal == 0)) {
				if ((GetGoodEvilValue(oPC) < 50)) {
					int10 = 266;
				}
				else {
					int10 = 267;
				}
			}
			if ((nGlobal == 1)) {
				if ((GetGoodEvilValue(oPC) < 50)) {
					if ((!GetSpellAcquired(266, oPC))) {
						int10 = 266;
					}
					else {
						int10 = 267;
					}
				}
				else {
					if ((!GetSpellAcquired(267, oPC))) {
						int10 = 267;
					}
					else {
						int10 = 266;
					}
				}
			}
			if ((nGlobal == 2)) {
				int10 = 268;
			}
		}
		if ((int4 == 13)) {
			if ((nGlobal == 0)) {
				int10 = 262;
			}
			if ((nGlobal == 1)) {
				if ((!GetSpellAcquired(262, oPC))) {
					int10 = 262;
				}
				else {
					int10 = 261;
				}
			}
			if ((nGlobal == 2)) {
				int10 = 263;
			}
		}
		if ((int4 == 14)) {
			if ((nGlobal == 0)) {
				int10 = 261;
			}
			if ((nGlobal == 1)) {
				if ((!GetSpellAcquired(261, oPC))) {
					int10 = 261;
				}
				else {
					int10 = 262;
				}
			}
			if ((nGlobal == 2)) {
				int10 = 264;
			}
		}
		if ((int4 == 16)) {
			if ((nGlobal == 0)) {
				int10 = 262;
			}
			if ((nGlobal == 1)) {
				if ((!GetSpellAcquired(262, oPC))) {
					int10 = 262;
				}
				else {
					int10 = 261;
				}
			}
			if ((nGlobal == 2)) {
				int10 = 263;
			}
		}
	}
	switch (nParam1) {
		case 4:
			int3 = 261;
			break;
		case 5:
			int3 = 262;
			break;
		case 6:
			int3 = 263;
			break;
		case 7:
			int3 = 264;
			break;
		case 12:
			int3 = 266;
			break;
		case 13:
			int3 = 267;
			break;
		case 14:
			int3 = 268;
			break;
	}
	return (int3 == int10);
}


void main() {
	int int1 = GetClassByPosition(2, GetFirstPC());
	int int3 = GetClassByPosition(1, GetFirstPC());
	int nGlobal = GetGlobalNumber("G_PC_FORM");
	int int7;
	object oPC = GetFirstPC();
	if ((int1 == 255)) {
		switch (int3) {
			case 3:
				switch (nGlobal) {
					case 0:
						int7 = 261;
						break;
					case 1:
						int7 = 262;
						break;
					case 2:
						int7 = 264;
						break;
				}
				break;
			case 4:
				if ((nGlobal == 0)) {
					if ((GetGoodEvilValue(oPC) < 50)) {
						int7 = 266;
					}
					else {
						int7 = 267;
					}
				}
				if ((nGlobal == 1)) {
					if ((GetGoodEvilValue(oPC) < 50)) {
						if ((!GetSpellAcquired(266, oPC))) {
							int7 = 266;
						}
						else {
							int7 = 267;
						}
					}
					else {
						if ((!GetSpellAcquired(267, oPC))) {
							int7 = 267;
						}
						else {
							int7 = 266;
						}
					}
				}
				if ((nGlobal == 2)) {
					int7 = 268;
				}
				break;
			case 5:
				switch (nGlobal) {
					case 0:
						int7 = 262;
						break;
					case 1:
						int7 = 261;
						break;
					case 2:
						int7 = 263;
						break;
				}
				break;
		}
	}
	else {
		if ((int1 == 11)) {
			if ((nGlobal == 0)) {
				int7 = 261;
			}
			if ((nGlobal == 1)) {
				if ((!GetSpellAcquired(261, oPC))) {
					int7 = 261;
				}
				else {
					int7 = 262;
				}
			}
			if ((nGlobal == 2)) {
				int7 = 264;
			}
		}
		if (((int1 == 12) || (int1 == 15))) {
			if ((nGlobal == 0)) {
				if ((GetGoodEvilValue(oPC) < 50)) {
					int7 = 266;
				}
				else {
					int7 = 267;
				}
			}
			if ((nGlobal == 1)) {
				if ((GetGoodEvilValue(oPC) < 50)) {
					if ((!GetSpellAcquired(266, oPC))) {
						int7 = 266;
					}
					else {
						int7 = 267;
					}
				}
				else {
					if ((!GetSpellAcquired(267, oPC))) {
						int7 = 267;
					}
					else {
						int7 = 266;
					}
				}
			}
			if ((nGlobal == 2)) {
				int7 = 268;
			}
		}
		if ((int1 == 13)) {
			if ((nGlobal == 0)) {
				int7 = 262;
			}
			if ((nGlobal == 1)) {
				if ((!GetSpellAcquired(262, oPC))) {
					int7 = 262;
				}
				else {
					int7 = 261;
				}
			}
			if ((nGlobal == 2)) {
				int7 = 263;
			}
		}
		if ((int1 == 14)) {
			if ((nGlobal == 0)) {
				int7 = 261;
			}
			if ((nGlobal == 1)) {
				if ((!GetSpellAcquired(261, oPC))) {
					int7 = 261;
				}
				else {
					int7 = 262;
				}
			}
			if ((nGlobal == 2)) {
				int7 = 264;
			}
		}
		if ((int1 == 16)) {
			if ((nGlobal == 0)) {
				int7 = 262;
			}
			if ((nGlobal == 1)) {
				if ((!GetSpellAcquired(262, oPC))) {
					int7 = 262;
				}
				else {
					int7 = 261;
				}
			}
			if ((nGlobal == 2)) {
				int7 = 263;
			}
		}
	}
	GrantSpell(int7, GetFirstPC());
	IncrementGlobalNumber("G_PC_FORM", 1);
}


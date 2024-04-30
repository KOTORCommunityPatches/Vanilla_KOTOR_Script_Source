void main() {
	int int1 = GetClassByPosition(2, GetFirstPC());
	int int3 = GetClassByPosition(1, GetFirstPC());
	int nGlobal = GetGlobalNumber("G_PC_FORM");
	int int7 = 0;
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
				else {
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
					else {
						if ((nGlobal == 2)) {
							int7 = 268;
						}
					}
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
			else {
				if ((nGlobal == 1)) {
					if ((!GetSpellAcquired(261, oPC))) {
						int7 = 261;
					}
					else {
						int7 = 262;
					}
				}
				else {
					if ((nGlobal == 2)) {
						int7 = 264;
					}
				}
			}
		}
		else {
			if (((int1 == 12) || (int1 == 15))) {
				if ((nGlobal == 0)) {
					if ((GetGoodEvilValue(oPC) < 50)) {
						int7 = 266;
					}
					else {
						int7 = 267;
					}
				}
				else {
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
					else {
						if ((nGlobal == 2)) {
							int7 = 268;
						}
					}
				}
			}
			else {
				if ((int1 == 13)) {
					if ((nGlobal == 0)) {
						int7 = 262;
					}
					else {
						if ((nGlobal == 1)) {
							if ((!GetSpellAcquired(262, oPC))) {
								int7 = 262;
							}
							else {
								int7 = 261;
							}
						}
						else {
							if ((nGlobal == 2)) {
								int7 = 263;
							}
						}
					}
				}
				else {
					if ((int1 == 14)) {
						if ((nGlobal == 0)) {
							int7 = 261;
						}
						else {
							if ((nGlobal == 1)) {
								if ((!GetSpellAcquired(261, oPC))) {
									int7 = 261;
								}
								else {
									int7 = 262;
								}
							}
							else {
								if ((nGlobal == 2)) {
									int7 = 264;
								}
							}
						}
					}
					else {
						if ((int1 == 16)) {
							if ((nGlobal == 0)) {
								int7 = 262;
							}
							else {
								if ((nGlobal == 1)) {
									if ((!GetSpellAcquired(262, oPC))) {
										int7 = 262;
									}
									else {
										int7 = 261;
									}
								}
								else {
									if ((nGlobal == 2)) {
										int7 = 263;
									}
								}
							}
						}
					}
				}
			}
		}
	}
	if ((int7 == 0)) {
		AurPostString("MAJOR PROBLEM!!! Can't find next Form for player to learn.", 10, 10, 3.0);
		return;
	}
	GrantSpell(int7, OBJECT_SELF);
	SetCurrentForm(OBJECT_SELF, int7);
	SetMinOneHP(OBJECT_SELF, 1);
}


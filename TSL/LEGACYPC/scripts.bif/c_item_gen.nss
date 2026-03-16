// Prototypes
int sub2(string stringParam1, string stringParam2, string stringParam3, string stringParam4);
int sub1();

int sub2(string stringParam1, string stringParam2, string stringParam3, string stringParam4) {
	int int1 = 0;
	object object1;
	if ((stringParam1 != "")) {
		object1 = GetItemPossessedBy(GetFirstPC(), stringParam1);
		if (GetIsObjectValid(object1)) {
			int1 = (int1 + GetNumStackedItems(object1));
		}
	}
	if ((stringParam2 != "")) {
		object1 = GetItemPossessedBy(GetFirstPC(), stringParam2);
		if (GetIsObjectValid(object1)) {
			int1 = (int1 + GetNumStackedItems(object1));
		}
	}
	if ((stringParam3 != "")) {
		object1 = GetItemPossessedBy(GetFirstPC(), stringParam3);
		if (GetIsObjectValid(object1)) {
			int1 = (int1 + GetNumStackedItems(object1));
		}
	}
	if ((stringParam4 != "")) {
		object1 = GetItemPossessedBy(GetFirstPC(), stringParam4);
		if (GetIsObjectValid(object1)) {
			int1 = (int1 + GetNumStackedItems(object1));
		}
	}
	return int1;
}

int sub1() {
	int int1;
	int nGlobal;
	string string1 = GetTag(OBJECT_SELF);
	int int3 = ((GetGlobalNumber("000_Jedi_Found") * 2) + 10);
	if ((string1 == "mira")) {
		int nLocalBool = GetLocalBoolean(OBJECT_SELF, 31);
		if (nLocalBool) {
			int1 = sub2("g_w_fraggren01", "G_W_FIREGREN001", "", "");
			nGlobal = GetGlobalNumber("K_MIRA_ITEMS");
			if ((((int1 <= 10) && (nGlobal < int3)) || (nGlobal == 0))) {
				return 1;
			}
			return 0;
		}
		else {
			int1 = sub2("G_w_StunGren01", "g_w_adhsvgren001", "G_W_CRYOBGREN001", "g_w_iongren01");
			nGlobal = GetGlobalNumber("K_MIRA_ITEMS");
			if ((((int1 <= 10) && (nGlobal < int3)) || (nGlobal == 0))) {
				return 1;
			}
			return 0;
		}
	}
	else {
		if ((string1 == "disciple")) {
			int1 = sub2("g_I_medeqpmnt01", "G_I_MEDEQPMNT02", "g_I_medeqpmnt03", "");
			nGlobal = GetGlobalNumber("K_DISCIPLE_ITEMS");
			if ((((int1 <= 10) && (nGlobal < int3)) || (nGlobal == 0))) {
				return 1;
			}
			return 0;
		}
		else {
			if ((string1 == "atton")) {
				int1 = sub2("g_i_secspike01", "G_I_SECSPIKE02", "", "");
				nGlobal = GetGlobalNumber("K_ATTON_ITEMS");
				if ((((int1 <= 10) && (nGlobal <= int3)) || (nGlobal == 0))) {
					return 1;
				}
				return 0;
			}
			else {
				if ((string1 == "mand")) {
					int1 = sub2("g_i_adrnaline001", "G_I_ADRNALINE002", "g_i_adrnaline003", "g_i_cmbtshot001");
					nGlobal = GetGlobalNumber("K_MAND_ITEMS");
					PrintString(("Number = " + IntToString(int1)));
					PrintString(("Global = " + IntToString(nGlobal)));
					PrintString(("Jedi Found = " + IntToString(int3)));
					if ((((int1 <= 10) && (nGlobal <= int3)) || (nGlobal == 0))) {
						return 1;
					}
					return 0;
				}
				else {
					if ((string1 == "t3m4")) {
						int1 = sub2("K_COMPUTER_SPIKE", "", "", "");
						nGlobal = GetGlobalNumber("K_T3M4_ITEMS");
						if ((((int1 <= 10) && (nGlobal <= int3)) || (nGlobal == 0))) {
							return 1;
						}
						return 0;
					}
					else {
						if ((string1 == "baodur")) {
							nGlobal = GetGlobalNumber("K_BAODUR_ITEMS");
							return 0;
						}
						else {
							if ((string1 == "hanharr")) {
								nGlobal = GetGlobalNumber("K_HANHARR_ITEMS");
								return 0;
							}
						}
					}
				}
			}
		}
	}
	return 0;
}

int StartingConditional() {
	if (sub1()) {
		return 1;
	}
	return 0;
}


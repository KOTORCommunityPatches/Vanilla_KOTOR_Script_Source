// Prototypes
void sub3();
int sub2(string stringParam1, string stringParam2, string stringParam3, string stringParam4);
int sub1();

void sub3() {
	int nGlobal;
	string string1 = GetTag(OBJECT_SELF);
	object object1;
	if ((string1 == "mira")) {
		int nRandom;
		int nLocalBool = GetLocalBoolean(OBJECT_SELF, 31);
		if (nLocalBool) {
			nRandom = d2(1);
			if ((nRandom == 1)) {
				object1 = CreateItemOnObject("g_w_fraggren01", GetFirstPC(), 1, 0);
			}
			else {
				if ((nRandom == 2)) {
					object1 = CreateItemOnObject("G_W_FIREGREN001", GetFirstPC(), 1, 0);
				}
			}
		}
		else {
			nRandom = d4(1);
			if ((nRandom == 1)) {
				object1 = CreateItemOnObject("G_W_CRYOBGREN001", GetFirstPC(), 1, 0);
			}
			else {
				if ((nRandom == 2)) {
					object1 = CreateItemOnObject("g_w_stungren01", GetFirstPC(), 1, 0);
				}
				else {
					if ((nRandom == 3)) {
						object1 = CreateItemOnObject("g_w_iongren01", GetFirstPC(), 1, 0);
					}
					else {
						if ((nRandom == 4)) {
							object1 = CreateItemOnObject("g_w_adhsvgren001", GetFirstPC(), 1, 0);
						}
					}
				}
			}
		}
		nGlobal = GetGlobalNumber("K_MIRA_ITEMS");
		(nGlobal++);
		SetGlobalNumber("K_MIRA_ITEMS", nGlobal);
	}
	else {
		if ((string1 == "disciple")) {
			int nLevel = GetHitDice(GetFirstPC());
			if ((nLevel <= 4)) {
				object1 = CreateItemOnObject("G_I_MEDEQPMNT01", GetFirstPC(), 1, 0);
			}
			else {
				if (((nLevel > 4) && (nLevel <= 10))) {
					object1 = CreateItemOnObject("G_I_MEDEQPMNT02", GetFirstPC(), 1, 0);
				}
				else {
					if ((nLevel > 10)) {
						object1 = CreateItemOnObject("G_I_MEDEQPMNT03", GetFirstPC(), 1, 0);
					}
				}
			}
			nGlobal = GetGlobalNumber("K_DISCIPLE_ITEMS");
			(nGlobal++);
			SetGlobalNumber("K_DISCIPLE_ITEMS", nGlobal);
		}
		else {
			if ((string1 == "atton")) {
				int int11 = GetHitDice(GetFirstPC());
				if ((int11 <= 7)) {
					object1 = CreateItemOnObject("g_i_secspike01", GetFirstPC(), 1, 0);
				}
				else {
					if ((int11 > 7)) {
						object1 = CreateItemOnObject("g_i_secspike02", GetFirstPC(), 1, 0);
					}
				}
				nGlobal = GetGlobalNumber("K_ATTON_ITEMS");
				(nGlobal++);
				SetGlobalNumber("K_ATTON_ITEMS", nGlobal);
			}
			else {
				if ((string1 == "mand")) {
					int int14 = d4(1);
					if ((int14 == 1)) {
						object1 = CreateItemOnObject("G_I_ADRNALINE001", GetFirstPC(), 1, 0);
					}
					else {
						if ((int14 == 2)) {
							object1 = CreateItemOnObject("G_I_ADRNALINE002", GetFirstPC(), 1, 0);
						}
						else {
							if ((int14 == 3)) {
								object1 = CreateItemOnObject("G_I_ADRNALINE003", GetFirstPC(), 1, 0);
							}
							else {
								if ((int14 == 4)) {
									object1 = CreateItemOnObject("G_I_CMBTSHOT001", GetFirstPC(), 1, 0);
								}
							}
						}
					}
					nGlobal = GetGlobalNumber("K_MAND_ITEMS");
					(nGlobal++);
					SetGlobalNumber("K_MAND_ITEMS", nGlobal);
				}
				else {
					if ((string1 == "t3m4")) {
						object1 = CreateItemOnObject("G_I_PROGSPIKE01", GetFirstPC(), 1, 0);
						nGlobal = GetGlobalNumber("K_T3M4_ITEMS");
						(nGlobal++);
						SetGlobalNumber("K_T3M4_ITEMS", nGlobal);
					}
					else {
						if ((string1 == "baodur")) {
							nGlobal = GetGlobalNumber("K_BAODUR_ITEMS");
							(nGlobal++);
							SetGlobalNumber("K_BAODUR_ITEMS", nGlobal);
						}
						else {
							if ((string1 == "hanharr")) {
								nGlobal = GetGlobalNumber("K_HANHARR_ITEMS");
								(nGlobal++);
								SetGlobalNumber("K_HANHARR_ITEMS", nGlobal);
							}
						}
					}
				}
			}
		}
	}
}

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

void main() {
	if (sub1()) {
		sub3();
	}
}


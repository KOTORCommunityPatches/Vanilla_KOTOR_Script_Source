int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nValid;
	object object1;
	object oM478Console = GetObjectByTag("M478Console", 0);
	switch (nParam1) {
		case 40:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software41");
			nValid = (nValid + GetIsObjectValid(object1));
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software42");
			nValid = (nValid + GetIsObjectValid(object1));
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software43");
			nValid = (nValid + GetIsObjectValid(object1));
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software44");
			nValid = (nValid + GetIsObjectValid(object1));
			return nValid;
		case 51:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode51");
			nValid = GetIsObjectValid(object1);
			if (((!GetGlobalNumber("800DRO_Console_51")) && nValid)) {
				return 1;
			}
			return 0;
		case 52:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode52");
			nValid = GetIsObjectValid(object1);
			if (((!GetGlobalNumber("800DRO_Console_52")) && nValid)) {
				return 1;
			}
			return 0;
		case 53:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode53");
			nValid = GetIsObjectValid(object1);
			if (((!GetGlobalNumber("800DRO_Console_53")) && nValid)) {
				return 1;
			}
			return 0;
		case 54:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode54");
			nValid = GetIsObjectValid(object1);
			if (((!GetGlobalNumber("800DRO_Console_54")) && nValid)) {
				return 1;
			}
			return 0;
		case 55:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode55");
			nValid = GetIsObjectValid(object1);
			if (((!GetGlobalNumber("800DRO_Console_55")) && nValid)) {
				return 1;
			}
			return 0;
	}
	return 0;
}


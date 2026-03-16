int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	object object1;
	object oM478Console = GetObjectByTag("M478Console", 0);
	switch (nParam1) {
		case 41:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software41");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_41")));
		case 42:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software42");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_42")));
		case 43:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software43");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_43")));
		case 44:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software44");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_44")));
		case 51:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode51");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_51")));
		case 52:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode52");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_52")));
		case 53:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode53");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_53")));
		case 54:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode54");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_54")));
		case 55:
			object1 = GetItemPossessedBy(GetFirstPC(), "800DRO_AccessCode55");
			return (!(GetIsObjectValid(object1) || GetGlobalNumber("800DRO_Console_55")));
	}
	return 0;
}


void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 51:
			ActionTakeItem(GetObjectByTag("800DRO_AccessCode51", 0), GetFirstPC());
			SetGlobalNumber("800DRO_Console_51", 1);
			break;
		case 52:
			ActionTakeItem(GetObjectByTag("800DRO_AccessCode52", 0), GetFirstPC());
			SetGlobalNumber("800DRO_Console_52", 1);
			break;
		case 53:
			ActionTakeItem(GetObjectByTag("800DRO_AccessCode53", 0), GetFirstPC());
			SetGlobalNumber("800DRO_Console_53", 1);
			break;
		case 54:
			ActionTakeItem(GetObjectByTag("800DRO_AccessCode54", 0), GetFirstPC());
			SetGlobalNumber("800DRO_Console_54", 1);
			break;
		case 55:
			ActionTakeItem(GetObjectByTag("800DRO_AccessCode55", 0), GetFirstPC());
			SetGlobalNumber("800DRO_Console_55", 1);
			break;
	}
}
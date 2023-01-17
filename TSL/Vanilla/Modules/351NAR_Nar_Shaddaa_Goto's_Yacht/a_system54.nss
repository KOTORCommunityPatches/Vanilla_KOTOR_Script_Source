void main() {
	int nParam1 = GetScriptParameter(1);
	object oM478Console = GetObjectByTag("M478Console", 0);
	switch (nParam1) {
		case 41:
			AurPostString("", 10, 10, 5.0);
			break;
		case 42:
			SetGlobalNumber("800DRO_Console_59", 2);
			break;
		case 43:
			SetGlobalNumber("800DRO_Console_59", 1);
			break;
		case 44:
			break;
	}
}


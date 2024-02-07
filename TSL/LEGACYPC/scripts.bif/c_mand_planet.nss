int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3 = 0;
	string string1 = GetModuleName();
	string string3 = GetSubString(string1, 3, 3);
	AurPostString(((("Current Module = " + string1) + " Substring = ") + string3), 10, 5, 5.0);
	switch (nParam1) {
		case 2:
			if ((string3 == "TEL")) {
				int3 = 1;
			}
			break;
		case 3:
			if ((string3 == "NAR")) {
				int3 = 1;
			}
			break;
		case 4:
			if ((string3 == "DXN")) {
				int3 = 1;
			}
			break;
		case 5:
			if ((string3 == "OND")) {
				int3 = 1;
			}
			break;
		case 6:
			if ((string3 == "DAN")) {
				int3 = 1;
			}
			break;
		case 7:
			if ((string3 == "KOR")) {
				int3 = 1;
			}
			break;
		case 8:
			if ((string3 == "TEL")) {
				int3 = 1;
			}
			break;
		case 9:
			if ((string3 == "MAL")) {
				int3 = 1;
			}
			break;
	}
	return int3;
}


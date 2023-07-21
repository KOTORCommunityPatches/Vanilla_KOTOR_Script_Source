// Prototypes
string sub1();

string sub1() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if ((nGlobal == 20)) {
		return "0C";
	}
	else {
		if ((nGlobal == 25)) {
			return "0B";
		}
		else {
			if ((nGlobal == 30)) {
				return "0D";
			}
			else {
				if ((nGlobal == 35)) {
					return "0A";
				}
			}
		}
	}
	return "NULL";
}

int StartingConditional() {
	string string1 = sub1();
	if ((string1 != "")) {
		return 1;
	}
	return 0;
}


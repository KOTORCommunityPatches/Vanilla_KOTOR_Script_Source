// Prototypes
int sub1(int intParam1);

int sub1(int intParam1) {
	int int1 = GetNPCSelectability(intParam1);
	if (((int1 == 1) || (int1 == 0))) {
		return 1;
	}
	else {
		return 0;
	}
}

int StartingConditional() {
	int int1 = 0;
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		if ((((GetModuleName() == "003EBO") && sub1(2)) && sub1(1))) {
			int1 = 1;
		}
	}
	else {
		if ((nParam1 == 2)) {
			if ((((GetModuleName() == "003EBO") && sub1(2)) && sub1(1))) {
				if (((GetInfluence(2) > 75) && (GetInfluence(1) > 85))) {
					int1 = 1;
				}
			}
		}
		else {
			if ((nParam1 == 3)) {
				if (((GetModuleName() == "003EBO") && (!GetGlobalBoolean("003EB_MAND_EBON")))) {
					SetGlobalBoolean("003EB_MAND_EBON", 1);
					int1 = 1;
				}
			}
		}
	}
	return int1;
}
// Prototypes
int sub1();

int sub1() {
	int int1;
	if ((GetJournalEntry("explosivesit") == 99)) {
		(int1++);
	}
	if ((GetJournalEntry("missingm") == 70)) {
		(int1++);
	}
	if ((GetJournalEntry("scouthunt") == 99)) {
		(int1++);
	}
	if ((GetJournalEntry("tsupport") == 99)) {
		(int1++);
	}
	if ((GetJournalEntry("tcannoks") == 99)) {
		(int1++);
	}
	return int1;
}

int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	switch (nParam1) {
		case 0:
			int3 = sub1();
			if ((int3 > 2)) {
				SetGlobalNumber("403DXN_Price_Passage", 50);
				return 1;
			}
			break;
		case 1:
			int3 = sub1();
			if ((int3 == 0)) {
				return 1;
			}
			break;
	}
	return 0;
}
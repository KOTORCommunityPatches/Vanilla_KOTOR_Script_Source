// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	ClearAllActions();
	SetGlobalNumber("403DXN_Camp_Visited", 1);
	switch (nParam1) {
		case 0:
			if (((GetJournalEntry("scouthunt") == 99) && (!GetLocalBoolean(OBJECT_SELF, 54)))) {
				return 1;
			}
			if (((nParam2 == 1) && (GetJournalEntry("scouthunt") == 99))) {
				return 1;
			}
			break;
		case 1:
			if (((sub1(OBJECT_SELF) == 0) && (GetGlobalNumber("402DXN_Sentry_Killer") == 1))) {
				return 1;
			}
			break;
		case 2:
			if (((GetJournalEntry("battle_circle") == 90) && (!GetLocalBoolean(OBJECT_SELF, 58)))) {
				return 1;
			}
			break;
	}
	return 0;
}

// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 1;
	int intGLOB_5 = 2;
	int intGLOB_6 = 3;
	int intGLOB_7 = 20;
	int intGLOB_8 = 21;
	int intGLOB_9 = 22;
	int intGLOB_10 = 23;
	int intGLOB_11 = 24;
	int intGLOB_12 = 25;
	int intGLOB_13 = 26;
	int intGLOB_14 = 27;
	int intGLOB_15 = 28;
	int intGLOB_16 = 29;
	int intGLOB_17 = 30;
	int intGLOB_18 = 31;
	int intGLOB_19 = 32;
	int intGLOB_20 = 33;
	int intGLOB_21 = 34;
	int intGLOB_22 = 35;
	int intGLOB_23 = 36;
	int intGLOB_24 = 37;
	int intGLOB_25 = 38;
	int intGLOB_26 = 39;
	int intGLOB_27 = 40;
	int intGLOB_28 = 41;
	int intGLOB_29 = 42;
	int intGLOB_30 = 43;
	int intGLOB_31 = 44;
	int intGLOB_32 = 45;
	int intGLOB_33 = 46;
	int intGLOB_34 = 47;
	int intGLOB_35 = 48;

// Prototypes
void sub3();
void sub2(int intParam1, int intParam2);
void sub1(int intParam1);

void sub3() {
	SetListening(OBJECT_SELF, 1);
	SetListenPattern(OBJECT_SELF, "GEN_I_WAS_ATTACKED", 1);
	SetListenPattern(OBJECT_SELF, "GEN_I_AM_DEAD", 3);
	SetListenPattern(OBJECT_SELF, "GEN_CALL_TO_ARMS", 6);
	string string1;
	int nLocal = GetLocalNumber(OBJECT_SELF, intGLOB_3);
	if ((nLocal > 0)) {
		string string2;
		if ((nLocal < 10)) {
			string2 = ("0" + IntToString(nLocal));
		}
		else {
			string2 = IntToString(nLocal);
		}
		string1 = ("WP_" + string2);
	}
	else {
		string1 = ("WP_" + GetTag(OBJECT_SELF));
	}
	int int3 = 1;
	string string6 = (string1 + "_01");
	object oWP = GetWaypointByTag(string6);
	while (GetIsObjectValid(oWP)) {
		(int3++);
		if ((int3 < 10)) {
			string6 = ((string1 + "_0") + IntToString(int3));
		}
		else {
			string6 = ((string1 + "_") + IntToString(int3));
		}
		oWP = GetWaypointByTag(string6);
	}
	int3 = (int3 - 1);
	if ((int3 > 0)) {
		SetLocalNumber(OBJECT_SELF, intGLOB_2, int3);
	}
}

void sub2(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void sub1(int intParam1) {
	if ((intParam1 == 1)) {
		sub2(intGLOB_27, 1);
		sub2(intGLOB_30, 0);
	}
	else {
		if ((intParam1 == 2)) {
			sub2(intGLOB_27, 0);
			sub2(intGLOB_30, 1);
		}
		else {
			if ((intParam1 == 3)) {
				sub2(intGLOB_27, 1);
				sub2(intGLOB_30, 1);
			}
		}
	}
}

void main() {
	sub1(intGLOB_6);
	sub3();
	ActionAttack(GetObjectByTag("man28_merc", 0), 0);
}


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
int sub7(int intParam1, int intParam2);
int sub6(int intParam1);
void sub5();
void sub4();
void sub3(int intParam1, int intParam2);
void sub2(int intParam1);
void sub1(int intParam1);

int sub7(int intParam1, int intParam2) {
	int int1;
	int int2 = sub6(intGLOB_28);
	if (((intParam1 == intParam2) && (int2 == 0))) {
		int1 = (-1);
		sub3(intGLOB_28, 1);
	}
	else {
		if (((intParam2 == 1) && (int2 == 1))) {
			int1 = 1;
			sub3(intGLOB_28, 0);
		}
		else {
			if ((int2 == 0)) {
				int1 = 1;
			}
			else {
				if ((int2 == 1)) {
					int1 = (-1);
				}
			}
		}
	}
	return int1;
}

int sub6(int intParam1) {
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, intParam1);
	if ((nLocalBool > 0)) {
		return 1;
	}
	return 0;
}

void sub5() {
	if ((!sub6(intGLOB_29))) {
		string string1 = "POST_";
		string string2 = "WP_";
		string string3;
		int nLocal = GetLocalNumber(OBJECT_SELF, intGLOB_1);
		int int4 = GetLocalNumber(OBJECT_SELF, intGLOB_2);
		int int6 = GetLocalNumber(OBJECT_SELF, intGLOB_3);
		if (((nLocal < 10) && (nLocal > 0))) {
			string3 = ("0" + IntToString(nLocal));
		}
		else {
			if ((nLocal == 0)) {
				if (sub6(intGLOB_25)) {
					nLocal = (Random(int4) + 1);
					if ((nLocal < 10)) {
						string3 = ("0" + IntToString(nLocal));
					}
					else {
						string3 = IntToString(nLocal);
					}
				}
				else {
					string3 = "01";
				}
			}
			else {
				if ((nLocal < 10)) {
					string3 = ("0" + IntToString(nLocal));
				}
				else {
					string3 = IntToString(nLocal);
				}
			}
		}
		string string9;
		string string10;
		if ((int6 > 0)) {
			string string11;
			if ((int6 < 10)) {
				string11 = ("0" + IntToString(int6));
			}
			else {
				string11 = IntToString(int6);
			}
			string10 = ((string2 + string11) + "_02");
		}
		else {
			string10 = ((string2 + GetTag(OBJECT_SELF)) + "_02");
		}
		object oWP = GetWaypointByTag(string10);
		if (((int4 == 0) && GetIsObjectValid(oWP))) {
		}
		if (GetIsObjectValid(oWP)) {
			int nLen = GetStringLength(string10);
			string9 = (GetStringLeft(string10, (nLen - 2)) + string3);
		}
		else {
			string2 = "UNKNOWN";
			string9 = (string1 + GetTag(OBJECT_SELF));
		}
		object object3 = GetWaypointByTag(string9);
		int int14 = sub6(intGLOB_26);
		if ((GetDistanceToObject(object3) <= 2.5)) {
			int int16;
			if (sub6(intGLOB_25)) {
				nLocal = (Random(int4) + 1);
			}
			else {
				if (((nLocal < int4) && (!sub6(intGLOB_25)))) {
					int16 = sub7(int4, nLocal);
					nLocal = (nLocal + int16);
				}
				else {
					if ((nLocal == int4)) {
						int16 = sub7(int4, nLocal);
						if (sub6(intGLOB_21)) {
							sub3(intGLOB_29, 1);
						}
						else {
							if (sub6(intGLOB_22)) {
								nLocal = 1;
								sub3(intGLOB_28, 0);
							}
							else {
								nLocal = (nLocal + int16);
							}
						}
					}
				}
			}
		}
		if (GetIsObjectValid(GetWaypointByTag(string9))) {
			ClearAllActions();
			object3 = GetWaypointByTag(string9);
			ActionForceMoveToObject(object3, sub6(intGLOB_26), 1.0, 30.0);
			SetLocalNumber(OBJECT_SELF, intGLOB_1, nLocal);
			int nRandom;
			if (sub6(intGLOB_24)) {
				nRandom = d3(1);
				ActionWait(IntToFloat(nRandom));
			}
			else {
				if (sub6(intGLOB_33)) {
					nRandom = (d6(1) + 6);
					ActionWait(IntToFloat(nRandom));
				}
				else {
					if (sub6(intGLOB_34)) {
						nRandom = d12(1);
						ActionWait(IntToFloat(nRandom));
					}
				}
			}
			if ((string2 != "UNKNOWN")) {
				ActionDoCommand(sub5());
			}
		}
	}
}

void sub4() {
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

void sub3(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void sub2(int intParam1) {
	if ((intParam1 == 1)) {
		sub3(intGLOB_27, 1);
		sub3(intGLOB_30, 0);
	}
	else {
		if ((intParam1 == 2)) {
			sub3(intGLOB_27, 0);
			sub3(intGLOB_30, 1);
		}
		else {
			if ((intParam1 == 3)) {
				sub3(intGLOB_27, 1);
				sub3(intGLOB_30, 1);
			}
		}
	}
}

void sub1(int intParam1) {
	SetLocalNumber(OBJECT_SELF, intGLOB_3, intParam1);
}

void main() {
	sub1(1);
	sub2(intGLOB_6);
	sub4();
	sub5();
}


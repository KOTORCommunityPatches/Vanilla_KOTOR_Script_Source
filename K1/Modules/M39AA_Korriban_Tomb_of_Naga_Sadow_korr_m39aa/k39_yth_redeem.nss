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
void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub2(object objectParam1, int intParam2);
void sub1(object objectParam1);

void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub2(object objectParam1, int intParam2) {
	int nAlign = GetGoodEvilValue(objectParam1);
	int int3;
	if ((((intParam2 == intGLOB_22) || (intParam2 == intGLOB_23)) || (intParam2 == intGLOB_24))) {
		int3 = 3;
	}
	else {
		int3 = 2;
	}
	int int4;
	int int5;
	if ((nAlign >= 85)) {
		int5 = 1;
	}
	else {
		if (((nAlign < 85) && (nAlign > 60))) {
			int5 = 2;
		}
		else {
			if (((nAlign <= 60) && (nAlign >= 40))) {
				int5 = 3;
			}
			else {
				if (((nAlign < 40) && (nAlign >= 15))) {
					int5 = 4;
				}
				else {
					int5 = 5;
				}
			}
		}
	}
	int4 = ((int5 + intParam2) * 2);
	if ((int4 < 0)) {
		int4 = (int4 * (-1));
	}
	if ((int4 == 0)) {
		int4 = 1;
	}
	if (((int5 == 1) && (intParam2 == intGLOB_25))) {
		int4 = 1;
	}
	else {
		if (((int5 == 5) && (intParam2 == intGLOB_24))) {
			int4 = 1;
		}
	}
	AurPostString(("Hit = " + IntToString(int4)), 5, 5, 4.0);
	AdjustAlignment(objectParam1, int3, int4);
}

void sub1(object objectParam1) {
	sub2(objectParam1, intGLOB_27);
}

void main() {
	object oG_T_TRAP002 = GetObjectByTag("G_T_TRAP002", 0);
	if (GetIsObjectValid(oG_T_TRAP002)) {
		DestroyObject(oG_T_TRAP002, 0.0, 1, 0.0);
	}
	object oKor39_kor36 = GetObjectByTag("kor39_kor36", 0);
	SetLocked(oKor39_kor36, 0);
	object oKor39_dooracid = GetObjectByTag("kor39_dooracid", 0);
	SetLocked(oKor39_dooracid, 0);
	object oK39_door_starmap = GetObjectByTag("k39_door_starmap", 0);
	SetLocked(oK39_door_starmap, 0);
	object oSpeaker = GetPCSpeaker();
	object oK39_way_yuthexit = GetObjectByTag("k39_way_yuthexit", 0);
	sub1(oSpeaker);
	SetGlobalNumber("KOR_FINAL_TEST", 7);
	if (GetIsObjectValid(oK39_way_yuthexit)) {
		ActionMoveToObject(oK39_way_yuthexit, 0, 1.0);
		sub3("Waypoint valid", 6, 6, 5.0);
	}
	else {
		sub3("Waypoint not valid", 6, 6, 5.0);
	}
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

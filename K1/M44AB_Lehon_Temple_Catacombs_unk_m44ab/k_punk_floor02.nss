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
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

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

void main() {
	if ((GetGlobalBoolean("UNK_TILES") == 0)) {
		if ((sub1(GetObjectByTag("FloorPanel01", 0)) == 1)) {
			AssignCommand(GetObjectByTag("FloorPanel01", 0), ActionPlayAnimation(200, 1.0, 0.0));
			sub2(GetObjectByTag("FloorPanel01", 0), 0);
		}
		else {
			AssignCommand(GetObjectByTag("FloorPanel01", 0), ActionPlayAnimation(201, 1.0, 0.0));
			sub2(GetObjectByTag("FloorPanel01", 0), 1);
		}
		if ((sub1(GetObjectByTag("FloorPanel02", 0)) == 1)) {
			AssignCommand(GetObjectByTag("FloorPanel02", 0), ActionPlayAnimation(200, 1.0, 0.0));
			sub2(GetObjectByTag("FloorPanel02", 0), 0);
		}
		else {
			AssignCommand(GetObjectByTag("FloorPanel02", 0), ActionPlayAnimation(201, 1.0, 0.0));
			sub2(GetObjectByTag("FloorPanel02", 0), 1);
		}
		if ((sub1(GetObjectByTag("FloorPanel03", 0)) == 1)) {
			AssignCommand(GetObjectByTag("FloorPanel03", 0), ActionPlayAnimation(200, 1.0, 0.0));
			sub2(GetObjectByTag("FloorPanel03", 0), 0);
		}
		else {
			AssignCommand(GetObjectByTag("FloorPanel03", 0), ActionPlayAnimation(201, 1.0, 0.0));
			sub2(GetObjectByTag("FloorPanel03", 0), 1);
		}
		if ((sub1(GetObjectByTag("FloorPanel05", 0)) == 1)) {
			AssignCommand(GetObjectByTag("FloorPanel05", 0), ActionPlayAnimation(200, 1.0, 0.0));
			sub2(GetObjectByTag("FloorPanel05", 0), 0);
		}
		else {
			AssignCommand(GetObjectByTag("FloorPanel05", 0), ActionPlayAnimation(201, 1.0, 0.0));
			sub2(GetObjectByTag("FloorPanel05", 0), 1);
		}
	}
	if (((((((((((sub1(GetObjectByTag("FloorPanel01", 0)) == 1) && (sub1(GetObjectByTag("FloorPanel02", 0)) == 1)) && (sub1(GetObjectByTag("FloorPanel03", 0)) == 1)) && (sub1(GetObjectByTag("FloorPanel04", 0)) == 1)) && (sub1(GetObjectByTag("FloorPanel05", 0)) == 1)) && (sub1(GetObjectByTag("FloorPanel06", 0)) == 1)) && (sub1(GetObjectByTag("FloorPanel07", 0)) == 1)) && (sub1(GetObjectByTag("FloorPanel08", 0)) == 1)) && (sub1(GetObjectByTag("FloorPanel09", 0)) == 1)) && (GetGlobalBoolean("UNK_TILES") == 0))) {
		SetGlobalBoolean("UNK_TILES", 1);
		AssignCommand(GetObjectByTag("PanelReset", 0), ActionPlayAnimation(201, 1.0, 0.0));
		PlaySound("cs_puzzledone");
		ActionOpenDoor(GetObjectByTag("unk44_massdoor", 0));
	}
}

// Byte code does not match

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
	int intGLOB_36 = 0;
	int intGLOB_37 = 1;
	int intGLOB_38 = 2;
	int intGLOB_39 = 3;
	int intGLOB_40 = 4;
	int intGLOB_41 = 5;
	int intGLOB_42 = 6;
	int intGLOB_43 = 7;
	int intGLOB_44 = 8;
	int intGLOB_45 = 9;
	int intGLOB_46 = 10;
	int intGLOB_47 = 1;
	int intGLOB_48 = 2;

// Prototypes
void sub3();
void sub2(object objectParam1, int intParam2, int intParam3);
int sub1(object objectParam1, int intParam2);

void sub3() {
	int int1 = 62;
	object oNPC;
	effect efNext;
	int nPartyCount = GetPartyMemberCount();
	int int4 = 0;
	while ((int4 < nPartyCount)) {
		oNPC = GetPartyMemberByIndex(int4);
		efNext = GetFirstEffect(oNPC);
		while (GetIsEffectValid(efNext)) {
			if ((GetEffectType(efNext) == int1)) {
				RemoveEffect(oNPC, efNext);
			}
			efNext = GetNextEffect(oNPC);
		}
		(int4++);
	}
}

void sub2(object objectParam1, int intParam2, int intParam3) {
	if ((((intParam2 >= 0) && (intParam2 <= 9)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

int sub1(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 9)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		if ((GetGlobalNumber("MAN_PLANET_PLOT") > 2)) {
			int int3;
			object oMan28_inssel = GetObjectByTag("man28_inssel", int3);
			while (GetIsObjectValid(oMan28_inssel)) {
				DestroyObject(oMan28_inssel, 0.0);
				(int3++);
				oMan28_inssel = GetObjectByTag("man28_inssel", int3);
			}
		}
		if ((sub1(OBJECT_SELF, intGLOB_45) == 0)) {
			sub2(OBJECT_SELF, intGLOB_45, 1);
			AddAvailableNPCByTemplate(0, "p_bastilla002");
			AddAvailableNPCByTemplate(2, "p_carth001");
		}
		DelayCommand(1.0, sub3());
	}
}


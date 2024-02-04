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
void sub3(object objectParam1, int intParam2);
void sub2(object objectParam1);
void sub1(object objectParam1);

void sub3(object objectParam1, int intParam2) {
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
	AdjustAlignment(objectParam1, int3, int4, 0);
}

void sub2(object objectParam1) {
	sub3(objectParam1, intGLOB_23);
}

void sub1(object objectParam1) {
	effect efVisual = EffectVisualEffect(3003, 0);
	ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0);
	ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetLocation(objectParam1), 0.0);
}

void main() {
	ActionWait(0.5);
	ActionDoCommand(sub1(GetObjectByTag("WP_KUMUSBOMB_1", 0)));
	ActionWait(1.0);
	ActionDoCommand(sub1(GetObjectByTag("WP_KUMUSBOMB_2", 0)));
	ActionWait(1.5);
	ActionDoCommand(sub1(GetObjectByTag("WP_KUMUSBOMB_3", 0)));
	ActionDoCommand(sub1(GetObjectByTag("WP_KUMUSBOMB_2", 0)));
	ActionDoCommand(sub1(GetObjectByTag("WP_KUMUSBOMB_1", 0)));
	object oFake_kumus = GetObjectByTag("fake_kumus", 0);
	if (GetIsObjectValid(oFake_kumus)) {
		DelayCommand(3.1, ApplyEffectToObject(0, EffectDeath(0, 1, 0), GetObjectByTag("kumus", 0), 0.0));
		DestroyObject(oFake_kumus, 0.0, 0, 0.0, 0);
		sub2(GetPCSpeaker());
		SetGlobalNumber("403DXN_Missing_Mand", 5);
	}
}
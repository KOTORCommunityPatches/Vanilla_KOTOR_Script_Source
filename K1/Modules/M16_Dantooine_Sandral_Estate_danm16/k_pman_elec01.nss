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
void sub6(string stringParam1, float floatParam2, int intParam3);
void sub5(object objectParam1, int intParam2, int intParam3);
void sub4(string stringParam1);
void sub3(object objectParam1);
void sub2(string stringParam1);
int sub1(object objectParam1, int intParam2);

void sub6(string stringParam1, float floatParam2, int intParam3) {
	object object1 = GetObjectByTag(stringParam1, 0);
	if (GetIsObjectValid(object1)) {
		effect efVisual = EffectVisualEffect(3011, 0);
		effect effect3 = EffectVisualEffect(1021, 0);
		effect efBeam = EffectBeam(2038, object1, 1, 0);
		effect efDamage;
		object oNearest = GetNearestObject(1, object1, 1);
		int int2 = 1;
		int int3 = 1000;
		float float1 = 0.3;
		AssignCommand(object1, ActionPlayAnimation(202, 1.0, 0.0));
		DelayCommand(0.3, ApplyEffectAtLocation(0, efVisual, GetLocation(object1), 0.0));
		while ((GetIsObjectValid(oNearest) && (GetDistanceBetween(oNearest, object1) <= floatParam2))) {
			if (((intParam3 == 1) || GetIsEnemy(oNearest, GetFirstPC()))) {
				efDamage = EffectDamage(int3, 128, 0);
				DelayCommand(float1, ApplyEffectToObject(0, efDamage, oNearest, 0.0));
				DelayCommand(float1, ApplyEffectToObject(1, efBeam, oNearest, 1.0));
				DelayCommand(float1, ApplyEffectToObject(0, effect3, oNearest, 1.0));
				float1 = (float1 + 0.17);
			}
			(int2++);
			oNearest = GetNearestObject(1, object1, int2);
		}
		ApplyEffectToObject(0, EffectVisualEffect(1008, 0), object1, 0.0);
	}
}

void sub5(object objectParam1, int intParam2, int intParam3) {
	int nLevel = GetHitDice(GetFirstPC());
	if ((intParam3 == 1)) {
		if (((((intParam2 == intGLOB_12) || (intParam2 == intGLOB_17)) || (intParam2 == intGLOB_18)) || (intParam2 == intGLOB_19))) {
			GiveXPToCreature(GetFirstPC(), (nLevel * 15));
		}
		else {
			if ((((intParam2 == intGLOB_13) || (intParam2 == intGLOB_20)) || (intParam2 == intGLOB_16))) {
				GiveXPToCreature(GetFirstPC(), (nLevel * 20));
			}
			else {
				if (((intParam2 == intGLOB_14) || (intParam2 == intGLOB_15))) {
					GiveXPToCreature(GetFirstPC(), (nLevel * 10));
				}
			}
		}
	}
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void sub4(string stringParam1) {
	int int1 = 1;
	object object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1);
	while (GetIsObjectValid(object1)) {
		ChangeToStandardFaction(object1, 1);
		(int1++);
		object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, int1);
	}
}

void sub3(object objectParam1) {
	AssignCommand(objectParam1, ActionAttack(GetNearestCreature(3, 1, objectParam1, 1, 7, 7, 0xFFFFFFFF, 0xFFFFFFFF), 0));
}

void sub2(string stringParam1) {
	int int1 = 1;
	object object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1);
	while (GetIsObjectValid(object1)) {
		ChangeToStandardFaction(object1, 6);
		sub3(object1);
		(int1++);
		object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, int1);
	}
}

int sub1(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	if ((sub1(OBJECT_SELF, 4) == 1)) {
		sub2("man28_pdroid2");
	}
	else {
		sub4("man28_pdroid2");
	}
	if ((sub1(OBJECT_SELF, 5) == 1)) {
		sub2("man28_pdroid");
	}
	else {
		sub4("man28_pdroid");
	}
	sub4("man28_turret01");
	if ((sub1(OBJECT_SELF, 6) == 1)) {
		sub2("man28_pdroid3");
	}
	else {
		sub4("man28_pdroid3");
	}
	sub4("man28_inssel");
	sub4("man28_inssel02");
	sub4("man28_inssel03");
	sub4("man28_inssel04");
	sub5(OBJECT_SELF, 9, 1);
	DelayCommand(0.5, ActionPlayAnimation(201, 1.0, 0.0));
	DelayCommand(0.5, sub6("comp", 30.0, 1));
}

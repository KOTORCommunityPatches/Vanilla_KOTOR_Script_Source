// Globals
	int intGLOB_1 = 1001;
	int intGLOB_2 = 1002;
	int intGLOB_3 = 1003;
	int intGLOB_4 = 1004;
	int intGLOB_5 = 1005;
	int intGLOB_6 = 1006;
	int intGLOB_7 = 1007;
	int intGLOB_8 = 1008;
	int intGLOB_9 = 1009;
	int intGLOB_10 = 1010;
	int intGLOB_11 = 1011;
	int intGLOB_12 = 1012;
	int intGLOB_13 = 2001;
	int intGLOB_14 = 2002;
	int intGLOB_15 = 2003;
	int intGLOB_16 = 2004;
	int intGLOB_17 = 2005;
	int intGLOB_18 = 2006;
	int intGLOB_19 = 2007;
	int intGLOB_20 = 2008;
	int intGLOB_21 = 2009;
	int intGLOB_22 = 2010;
	int intGLOB_23 = 2011;
	int intGLOB_24 = 2012;
	int intGLOB_25 = 2013;
	int intGLOB_26 = 2014;
	int intGLOB_27 = 3001;
	int intGLOB_28 = 3002;
	int intGLOB_29 = 3003;
	int intGLOB_30 = 4001;
	int intGLOB_31 = 0;
	int intGLOB_32 = 1;
	int intGLOB_33 = 2;
	int intGLOB_34 = 3;
	int intGLOB_35 = 4;
	int intGLOB_36 = 5;
	int intGLOB_37 = 6;
	int intGLOB_38 = 7;
	int intGLOB_39 = 8;
	int intGLOB_40 = 9;
	int intGLOB_41 = 10;
	int intGLOB_42 = 11;
	int intGLOB_43 = 12;
	int intGLOB_44 = 13;
	int intGLOB_45 = 14;
	int intGLOB_46 = 15;
	int intGLOB_47 = 16;
	int intGLOB_48 = 17;
	int intGLOB_49 = 18;
	int intGLOB_50 = 19;
	int intGLOB_51 = 1100;
	int intGLOB_52 = (-6);
	int intGLOB_53 = (-5);
	int intGLOB_54 = (-4);
	int intGLOB_55 = (-2);
	int intGLOB_56 = (-1);
	int intGLOB_57 = 0;

// Prototypes
void sub1(string stringParam1, float floatParam2, int intParam3);

void sub1(string stringParam1, float floatParam2, int intParam3) {
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

void main() {
	ActionDoCommand(sub1(GetTag(OBJECT_SELF), 5.0, 1));
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
}

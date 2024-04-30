// Globals
	int intGLOB_1 = 1;
	int intGLOB_2 = 2;
	int intGLOB_3 = 3;
	int intGLOB_4 = 4;
	int intGLOB_5 = 5;
	int intGLOB_6 = 6;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 8;
	int intGLOB_13 = 9;
	int intGLOB_14 = 10;
	int intGLOB_15 = 11;
	int intGLOB_16 = 1;
	int intGLOB_17 = 2;
	int intGLOB_18 = 3;
	int intGLOB_19 = 4;
	int intGLOB_20 = 5;
	int intGLOB_21 = 6;
	int intGLOB_22 = 7;
	int intGLOB_23 = 8;
	int intGLOB_24 = 9;
	int intGLOB_25 = 10;
	int intGLOB_26 = 11;
	int intGLOB_27 = 12;
	int intGLOB_28 = 13;
	int intGLOB_29 = 14;
	int intGLOB_30 = 15;
	int intGLOB_31 = 16;
	int intGLOB_32 = 17;
	int intGLOB_33 = 18;
	int intGLOB_34 = 19;
	int intGLOB_35 = 20;
	int intGLOB_36 = 21;
	int intGLOB_37 = 22;
	int intGLOB_38 = 23;
	int intGLOB_39 = 24;
	int intGLOB_40 = 25;
	int intGLOB_41 = 26;
	int intGLOB_42 = 27;
	int intGLOB_43 = 28;
	int intGLOB_44 = 29;
	int intGLOB_45 = 30;
	int intGLOB_46 = 31;
	int intGLOB_47 = 32;
	int intGLOB_48 = 84;
	int intGLOB_49 = 0;
	int intGLOB_50 = 1;
	int intGLOB_51 = 2;
	int intGLOB_52 = 29;
	int intGLOB_53 = 65;
	int intGLOB_54 = 98;
	int intGLOB_55 = 99;
	int intGLOB_56 = 100;
	int intGLOB_57 = 101;
	int intGLOB_58 = 103;
	int intGLOB_59 = 104;
	int intGLOB_60 = 105;
	int intGLOB_61 = 106;
	int intGLOB_62 = 102;
	int intGLOB_63 = 107;
	int intGLOB_64 = 108;
	int intGLOB_65 = 102;
	int intGLOB_66 = 107;
	int intGLOB_67 = 108;
	int intGLOB_68 = 109;
	int intGLOB_69 = 15;
	int intGLOB_70 = 10;
	int intGLOB_71 = 5;
	int intGLOB_72 = 2;
	int intGLOB_73;
	int intGLOB_74;
	int intGLOB_75;
	object objectGLOB_1;
	int intGLOB_76;
	int intGLOB_77;
	int intGLOB_78;
	int intGLOB_79;
	int intGLOB_80;
	int intGLOB_81;
	int intGLOB_82 = 1;
	int intGLOB_83 = 2;
	int intGLOB_84 = 3;
	int intGLOB_85 = 20;
	int intGLOB_86 = 21;
	int intGLOB_87 = 22;
	int intGLOB_88 = 23;
	int intGLOB_89 = 24;
	int intGLOB_90 = 25;
	int intGLOB_91 = 26;
	int intGLOB_92 = 27;
	int intGLOB_93 = 28;
	int intGLOB_94 = 66;
	int intGLOB_95 = 67;
	int intGLOB_96 = 68;
	int intGLOB_97 = 69;
	int intGLOB_98 = 70;
	int intGLOB_99 = 71;
	int intGLOB_100 = 72;
	int intGLOB_101 = 73;
	int intGLOB_102 = 74;
	int intGLOB_103 = 75;
	int intGLOB_104 = 76;
	int intGLOB_105 = 77;
	int intGLOB_106 = 78;
	int intGLOB_107 = 79;
	int intGLOB_108 = 80;
	int intGLOB_109 = 81;
	int intGLOB_110 = 82;
	int intGLOB_111 = 83;
	int intGLOB_112 = 85;
	int intGLOB_113 = 86;
	int intGLOB_114 = 87;
	int intGLOB_115 = 88;
	int intGLOB_116 = 89;
	int intGLOB_117 = 90;
	int intGLOB_118 = 91;
	int intGLOB_119 = 92;
	int intGLOB_120 = 94;
	int intGLOB_121 = 95;
	int intGLOB_122 = 96;
	int intGLOB_123 = 97;
	int intGLOB_124 = 1;
	int intGLOB_125 = 2;
	int intGLOB_126 = 3;
	int intGLOB_127 = 4;
	int intGLOB_128 = 5;

// Prototypes
void sub2(object objectParam1);
void sub1(int intParam1, int intParam2);

void sub2(object objectParam1) {
	effect efVisual = EffectVisualEffect(3010, 0);
	effect efDeath = EffectDeath(0, 1, 0);
	location location1 = GetLocation(objectParam1);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	int int1 = 20;
	int int2;
	int int3 = 42;
	effect efDamage;
	effect efPush = EffectForcePushTargeted(location1, 0);
	object oShapeObject;
	int int4 = GetOwnerDemolitionsSkill(objectParam1);
	if ((int4 > 0)) {
		int3 = (int3 + ((3 * int4) / 2));
	}
	float float1 = 3.3;
	if ((int4 > 0)) {
		float1 = (float1 + (0.1 * int4));
	}
	oShapeObject = GetFirstObjectInShape(4, float1, location1, 1, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		if (((!GetIsNeutral(oShapeObject, OBJECT_SELF)) && (oShapeObject != OBJECT_SELF))) {
			int3 = GetReflexAdjustedDamage(int3, oShapeObject, int1, 0, OBJECT_SELF);
			efDamage = EffectDamage(int3, 4096, 0);
			ApplyEffectToObject(0, efPush, oShapeObject, 0.0);
			ApplyEffectToObject(0, efDamage, oShapeObject, 0.0);
		}
		oShapeObject = GetNextObjectInShape(4, float1, location1, 1, 1, [0.0,0.0,0.0]);
	}
	SetMinOneHP(objectParam1, 0);
	ApplyEffectToObject(2, efDeath, objectParam1, 0.0);
}

void sub1(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1006)) {
		if (((GetCurrentHitPoints(OBJECT_SELF) == 1) && (GetLocalBoolean(OBJECT_SELF, 34) == 0))) {
			SetLocalBoolean(OBJECT_SELF, 34, 1);
			object o151HARDoor = GetObjectByTag("151HARDoor", 0);
			SetLocked(o151HARDoor, 0);
			AssignCommand(o151HARDoor, ActionOpenDoor(o151HARDoor));
			ClearAllEffects();
			ClearAllActions();
			CancelCombat(OBJECT_SELF);
			AssignCommand(OBJECT_SELF, sub1(intGLOB_114, 1));
			SetCommandable(1, OBJECT_SELF);
			AssignCommand(OBJECT_SELF, ClearAllActions());
			AssignCommand(OBJECT_SELF, ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 0));
			AssignCommand(OBJECT_SELF, ActionPlayAnimation(21, 1.0, (-1.0)));
			AssignCommand(OBJECT_SELF, ActionWait(1.0));
			AssignCommand(OBJECT_SELF, ActionBarkString(104130));
			AssignCommand(OBJECT_SELF, ActionWait(2.0));
			AssignCommand(OBJECT_SELF, ActionBarkString(104127));
			AssignCommand(OBJECT_SELF, ActionWait(1.5));
			AssignCommand(OBJECT_SELF, ActionBarkString(104128));
			AssignCommand(OBJECT_SELF, ActionWait(1.5));
			AssignCommand(OBJECT_SELF, ActionBarkString(104129));
			AssignCommand(OBJECT_SELF, ActionWait(1.5));
			AssignCommand(OBJECT_SELF, ActionDoCommand(sub2(OBJECT_SELF)));
			AssignCommand(OBJECT_SELF, ActionWait(1.5));
		}
	}
}


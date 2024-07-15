// Globals
	float floatGLOB_1 = 1.0;
	int intGLOB_1;
	int intGLOB_2;
	int intGLOB_3;
	int intGLOB_4;
	int intGLOB_5;
	int intGLOB_6;
	int intGLOB_7;

// Prototypes
void sub19(int intParam1, object objectParam2);
void sub18(int intParam1, effect effectParam2, object objectParam3, float floatParam4);
int sub17(object objectParam1, int intParam2);
void sub16(string stringParam1, int intParam2, int intParam3, float floatParam4);
int sub15(object objectParam1, int intParam2);
int sub14(object objectParam1, int intParam2);
float sub13(float floatParam1);
void sub12(effect effectParam1, int intParam2, object objectParam3);
float sub11(float floatParam1);
int sub10(object objectParam1, int intParam2, int intParam3, int intParam4);
void sub9(float floatParam1, effect effectParam2, object objectParam3);
void sub8(string stringParam1);
int sub7();
int sub6(object objectParam1, int intParam2);
int sub5(object objectParam1, effect effectParam2, effect effectParam3, effect effectParam4);
void sub4(int intParam1, object objectParam2, float floatParam3, int intParam4, effect effectParam5, float floatParam6, effect effectParam7, float floatParam8, int intParam9);
int sub3(object objectParam1, int intParam2);
void sub2(object objectParam1, int intParam2);
void sub1();

void sub19(int intParam1, object objectParam2) {
	int int1 = 0;
	effect efNext = GetFirstEffect(objectParam2);
	while (GetIsEffectValid(efNext)) {
		if ((GetEffectType(efNext) == intParam1)) {
			int1 = 1;
			RemoveEffect(objectParam2, efNext);
		}
		efNext = GetNextEffect(objectParam2);
	}
}

void sub18(int intParam1, effect effectParam2, object objectParam3, float floatParam4) {
	if (GetIsEnemy(objectParam3, OBJECT_SELF)) {
		ApplyEffectToObject(intParam1, effectParam2, objectParam3, floatParam4);
	}
}

int sub17(object objectParam1, int intParam2) {
	int int1 = 0;
	if (((((GetAppearanceType(objectParam1) == 59) || (GetAppearanceType(objectParam1) == 60)) || (GetAppearanceType(objectParam1) == 61)) || (GetAppearanceType(objectParam1) == 65))) {
		if ((((((GetHasSpellEffect(110, objectParam1) || GetHasSpellEffect(111, objectParam1)) || GetHasSpellEffect(112, objectParam1)) || GetHasSpellEffect(113, objectParam1)) || GetHasSpellEffect(114, objectParam1)) || GetHasSpellEffect(115, objectParam1))) {
			if ((intParam2 == 1)) {
				DisplayFeedBackText(objectParam1, 1);
			}
			int1 = 1;
		}
	}
	return int1;
}

void sub16(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	stringParam1 = ("DEBUG: " + stringParam1);
	AurPostString(stringParam1, 10, 10, 3.0);
}

int sub15(object objectParam1, int intParam2) {
	int int1 = 0;
	sub16(("Appearance = " + IntToString(GetAppearanceType(objectParam1))), 5, 10, 4.0);
	if (((((GetAppearanceType(objectParam1) == 182) || (GetAppearanceType(objectParam1) == 183)) || (GetAppearanceType(objectParam1) == 640)) || (GetAppearanceType(objectParam1) == 657))) {
		if ((intParam2 == 1)) {
			DisplayFeedBackText(objectParam1, 1);
		}
		int1 = 1;
	}
	return int1;
}

int sub14(object objectParam1, int intParam2) {
	int int1 = 0;
	sub8("Push Check Start");
	if (((GetCreatureSize(objectParam1) != 4) && (GetCreatureSize(objectParam1) != 5))) {
		sub8("Size is OK");
		if ((sub15(objectParam1, 0) == 0)) {
			sub8("I am not a turret");
			if ((((intParam2 == 1) && (sub17(objectParam1, 0) == 0)) || (intParam2 == 0))) {
				sub8("I am whirlwind without droid shiled or not whirlwind");
				if ((GetCreatureMovmentType(objectParam1) != 1)) {
					sub8("Returning Push True");
					int1 = 1;
				}
			}
		}
	}
	if ((int1 == 0)) {
		DisplayFeedBackText(objectParam1, 1);
	}
	return int1;
}

float sub13(float floatParam1) {
	float float1 = floatParam1;
	return float1;
}

void sub12(effect effectParam1, int intParam2, object objectParam3) {
	if (GetIsObjectValid(objectParam3)) {
		if ((((!GetIsConversationActive()) && (!GetIsDead(objectParam3))) && GetIsEnemy(objectParam3, OBJECT_SELF))) {
			if (((intParam2 % 2) == 0)) {
				ApplyEffectToObject(0, effectParam1, objectParam3, 0.0);
			}
			(--intParam2);
			if ((intParam2 > 0)) {
				DelayCommand(1.0, sub12(effectParam1, intParam2, objectParam3));
			}
		}
	}
}

float sub11(float floatParam1) {
	float float1 = floatParam1;
	if (IsFormActive(OBJECT_SELF, 268)) {
		float1 = (float1 * 1.5);
	}
	return float1;
}

int sub10(object objectParam1, int intParam2, int intParam3, int intParam4) {
	int nRandom = 0;
	int int2 = 0;
	int int3 = 0;
	if ((intParam4 != 0)) {
		nRandom = intParam4;
	}
	else {
		switch (intParam3) {
			case 2:
				nRandom = d2(intParam2);
				break;
			case 3:
				nRandom = d3(intParam2);
				break;
			case 4:
				nRandom = d4(intParam2);
				break;
			case 6:
				nRandom = d6(intParam2);
				break;
			case 8:
				nRandom = d8(intParam2);
				break;
			case 10:
				nRandom = d10(intParam2);
				break;
			case 12:
				nRandom = d12(intParam2);
				break;
			case 20:
				nRandom = d20(intParam2);
				break;
			case 100:
				nRandom = d100(intParam2);
				break;
			default:
				sub8(("SP_CalcDamage() - Invalid Die Size:" + IntToString(intParam3)));
				return 0;
				break;
		}
		if (IsFormActive(OBJECT_SELF, 265)) {
			nRandom = (nRandom + 3);
		}
		else {
			if (IsFormActive(OBJECT_SELF, 266)) {
				int int15 = ((nRandom * 30) / 100);
				nRandom = (nRandom + int15);
			}
		}
		return nRandom;
	}
}

void sub9(float floatParam1, effect effectParam2, object objectParam3) {
	float float1;
	int nRandom = d6(1);
	float1 = (IntToFloat(nRandom) / 10.0);
	if ((floatParam1 == 1000.0)) {
		ApplyEffectToObject(2, effectParam2, objectParam3, 0.0);
	}
	else {
		if ((floatParam1 == 0.0)) {
			DelayCommand(float1, ApplyEffectToObject(0, effectParam2, objectParam3, 0.0));
		}
		else {
			ApplyEffectToObject(1, effectParam2, objectParam3, floatParam1);
		}
	}
}

void sub8(string stringParam1) {
	if ((!ShipBuild())) {
		stringParam1 = ("SPELL GENERIC DEBUG STRING: " + stringParam1);
		PrintString(stringParam1);
	}
}

int sub7() {
	int int1 = GetSpellSaveDC();
	return int1;
}

int sub6(object objectParam1, int intParam2) {
	int int1;
	int int2;
	if ((intParam2 > 0)) {
		int2 = intParam2;
	}
	else {
		int2 = sub7();
	}
	if (IsFormActive(OBJECT_SELF, 268)) {
		int2 = (int2 + 2);
	}
	if ((IsFormActive(objectParam1, 259) || IsFormActive(objectParam1, 265))) {
		int2 = (int2 - 2);
	}
	else {
		if (IsFormActive(objectParam1, 263)) {
			int2 = (int2 - 1);
		}
		else {
			if ((IsFormActive(objectParam1, 264) || IsFormActive(objectParam1, 268))) {
				int2 = (int2 + 4);
			}
		}
	}
	if ((int2 < 0)) {
		int2 = 0;
	}
	if ((intGLOB_1 == 1)) {
		int1 = FortitudeSave(objectParam1, int2, intGLOB_2, OBJECT_SELF);
		sub8(((("Fort Save = " + IntToString(int1)) + " For DC of ") + IntToString(int2)));
	}
	else {
		if ((intGLOB_1 == 2)) {
			int1 = ReflexSave(objectParam1, int2, intGLOB_2, OBJECT_SELF);
			sub8(((("Reflex Save = " + IntToString(int1)) + " For DC of ") + IntToString(int2)));
		}
		else {
			if ((intGLOB_1 == 3)) {
				int1 = WillSave(objectParam1, int2, intGLOB_2, OBJECT_SELF);
				sub8(((("Will Save = " + IntToString(int1)) + " For DC of ") + IntToString(int2)));
			}
		}
	}
	if ((int1 > 0)) {
		ApplyEffectToObject(0, EffectForceResisted(OBJECT_SELF), objectParam1, 0.0);
		DisplayFeedBackText(objectParam1, 2);
	}
	return int1;
}

int sub5(object objectParam1, effect effectParam2, effect effectParam3, effect effectParam4) {
	int int1 = 0;
	if (((GetIsLinkImmune(objectParam1, effectParam2) || GetIsLinkImmune(objectParam1, effectParam3)) || GetIsLinkImmune(objectParam1, effectParam4))) {
		DisplayFeedBackText(objectParam1, 1);
		int1 = 1;
	}
	if (ResistForce(OBJECT_SELF, objectParam1)) {
		DisplayFeedBackText(objectParam1, 0);
		int1 = 1;
	}
	if ((int1 == 1)) {
		ApplyEffectToObject(0, EffectForceResisted(OBJECT_SELF), objectParam1, 0.0);
	}
	return int1;
}

void sub4(int intParam1, object objectParam2, float floatParam3, int intParam4, effect effectParam5, float floatParam6, effect effectParam7, float floatParam8, int intParam9) {
	int int1 = 0;
	object oShapeObject;
	if ((intParam4 > 1)) {
		oShapeObject = GetFirstObjectInShape(intGLOB_7, floatParam3, GetLocation(objectParam2), 0, 1, [0.0,0.0,0.0]);
	}
	else {
		if ((intParam4 == 1)) {
			oShapeObject = objectParam2;
		}
	}
	while ((GetIsObjectValid(oShapeObject) && (int1 < intParam4))) {
		if (((intParam9 == GetRacialType(oShapeObject)) || (intParam9 == 7))) {
			int int4 = 0;
			effect effect1;
			float float1;
			int int5;
			int int6;
			effect efDamage;
			if (((GetIsEnemy(oShapeObject, OBJECT_SELF) && (intGLOB_6 == 1)) || (GetIsFriend(oShapeObject, OBJECT_SELF) && (intGLOB_6 == 0)))) {
				SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
				int int10 = 0;
				int int11 = (-1);
				if ((intGLOB_6 == 1)) {
					int10 = sub5(oShapeObject, effectParam5, effectParam7, efDamage);
				}
				int4;
				while ((int4 <= 1)) {
					if ((int4 == 0)) {
						effect1 = effectParam5;
						float1 = floatParam6;
					}
					else {
						effect1 = effectParam7;
						float1 = floatParam8;
					}
					if ((int10 == 0)) {
						if (((intGLOB_6 == 1) && (int11 == (-1)))) {
							int11 = sub6(oShapeObject, 0);
						}
						else {
							int11 = 0;
						}
						if ((int11 == 0)) {
							if (((int4 == 1) && (intGLOB_3 > 0))) {
								efDamage = EffectDamage(intGLOB_3, intGLOB_4, 0);
								efDamage = EffectLinkEffects(efDamage, EffectVisualEffect(intGLOB_5, 0));
								ApplyEffectToObject(0, efDamage, oShapeObject, 0.0);
							}
							if (GetIsEffectValid(effect1)) {
								sub9(float1, effect1, oShapeObject);
							}
						}
						else {
							if (((int11 > 0) && (intParam1 == 0))) {
								if (((int4 == 1) && (intGLOB_3 > 0))) {
									intGLOB_3 = (intGLOB_3 / 2);
									efDamage = EffectDamage(intGLOB_3, intGLOB_4, 0);
									efDamage = EffectLinkEffects(efDamage, EffectVisualEffect(intGLOB_5, 0));
									ApplyEffectToObject(0, efDamage, oShapeObject, 0.0);
								}
								if (GetIsEffectValid(effect1)) {
									sub9(float1, effect1, oShapeObject);
								}
							}
						}
					}
					if (((int10 > 0) || ((int11 > 0) && (intParam1 > 0)))) {
						if ((int6 == 0)) {
							ApplyEffectToObject(0, EffectForceFizzle(), OBJECT_SELF, 0.0);
							int6 = 1;
						}
					}
					(int4++);
				}
				(int1++);
			}
		}
		oShapeObject = GetNextObjectInShape(intGLOB_7, floatParam3, GetLocation(objectParam2), 0, (1 | 64), [0.0,0.0,0.0]);
	}
}

int sub3(object objectParam1, int intParam2) {
	int int1 = 0;
	int int2 = (-1);
	int int3 = (-1);
	int int4 = (-1);
	int int5 = (-1);
	int int6 = (-1);
	int int7 = (-1);
	switch (intParam2) {
		case 45:
			int2 = 7;
			int3 = 38;
			break;
		case 7:
			int2 = 38;
			break;
		case 18:
			int2 = 24;
			int3 = 17;
			break;
		case 24:
			int2 = 17;
			break;
		case 41:
			int2 = 20;
			break;
		case 22:
			int2 = 33;
			int3 = 36;
			break;
		case 33:
			int2 = 36;
			break;
		case 42:
			int2 = 40;
			int3 = 133;
			break;
		case 40:
			int2 = 133;
			break;
		case 46:
			int2 = 29;
			int3 = 44;
			break;
		case 29:
			int2 = 44;
			break;
		case 8:
			int2 = 34;
			int3 = 37;
			break;
		case 34:
			int2 = 37;
			break;
		case 135:
			int2 = 136;
			int3 = 137;
			break;
		case 136:
			int2 = 137;
			break;
		case 138:
			int2 = 139;
			int3 = 140;
			break;
		case 139:
			int2 = 140;
			break;
		case 141:
			int2 = 142;
			int3 = 143;
			break;
		case 142:
			int2 = 143;
			break;
		case 144:
			int2 = 145;
			int3 = 146;
			int4 = 147;
			int5 = 148;
			int6 = 149;
			break;
		case 145:
			int2 = 146;
			int3 = 147;
			int4 = 148;
			int5 = 149;
			break;
		case 146:
			int2 = 147;
			int3 = 148;
			int4 = 149;
			break;
		case 147:
			int2 = 148;
			int3 = 149;
			break;
		case 148:
			int2 = 149;
			break;
		case 150:
			int2 = 151;
			int3 = 152;
			break;
		case 151:
			int2 = 152;
			break;
		case 159:
			int2 = 160;
			int3 = 161;
			break;
		case 160:
			int2 = 161;
			break;
		case 164:
			int2 = 165;
			int3 = 166;
			break;
		case 165:
			int2 = 166;
			break;
		case 271:
			int2 = 272;
			int3 = 273;
			break;
		case 272:
			int2 = 273;
			break;
		case 167:
			int2 = 168;
			int3 = 169;
			int4 = 170;
			int5 = 171;
			int6 = 172;
			break;
		case 168:
			int2 = 169;
			int3 = 170;
			int4 = 171;
			int5 = 172;
			break;
		case 169:
			int2 = 170;
			int3 = 171;
			int4 = 172;
			break;
		case 170:
			int2 = 171;
			int3 = 172;
			break;
		case 171:
			int2 = 172;
			break;
		case 181:
			int2 = 200;
			break;
		case 182:
			int2 = 184;
			break;
		case 201:
			int2 = 269;
			break;
		case 38:
			return 0;
			break;
			effect effect1;
			if ((((((GetHasSpellEffect(int2, objectParam1) || GetHasSpellEffect(int3, objectParam1)) || GetHasSpellEffect(int4, objectParam1)) || GetHasSpellEffect(int5, objectParam1)) || GetHasSpellEffect(int6, objectParam1)) || GetHasSpellEffect(int7, objectParam1))) {
				int1 = 1;
			}
			return int1;
		case 17:
		case 20:
		case 36:
		case 133:
		case 44:
		case 37:
		case 137:
		case 140:
		case 143:
		case 149:
		case 152:
		case 161:
		case 166:
		case 273:
		case 172:
		case 14:
		case 180:
		case 176:
		case 200:
		case 184:
		case 269:
		case 270:
		case 131:
		default:
	}
}

void sub2(object objectParam1, int intParam2) {
	{
		int int1 = (-1);
		int int2 = (-1);
		int int3 = (-1);
		int int4 = (-1);
		int int5 = (-1);
		int int6 = (-1);
		switch (intParam2) {
		case 45:
			int1 = 45;
			break;
		case 7:
			int1 = 45;
			int2 = 7;
			break;
		case 38:
			int1 = 45;
			int2 = 7;
			int3 = 38;
			break;
		case 18:
			int1 = 18;
			break;
		case 24:
			int1 = 18;
			int2 = 24;
			break;
		case 17:
			int1 = 18;
			int2 = 24;
			int3 = 17;
			break;
		case 41:
			int1 = 41;
			break;
		case 20:
			int1 = 41;
			int2 = 20;
			break;
		case 22:
			int1 = 22;
			break;
		case 33:
			int1 = 22;
			int2 = 33;
			break;
		case 36:
			int1 = 22;
			int2 = 33;
			int3 = 36;
			break;
		case 42:
			int1 = 42;
			break;
		case 40:
			int1 = 42;
			int2 = 40;
			break;
		case 133:
			int1 = 42;
			int2 = 40;
			int3 = 133;
			break;
		case 46:
			int1 = 46;
			break;
		case 29:
			int1 = 46;
			int2 = 29;
			break;
		case 44:
			int1 = 46;
			int2 = 29;
			int3 = 44;
			break;
		case 8:
			int1 = 8;
			break;
		case 34:
			int1 = 8;
			int2 = 34;
			break;
		case 37:
			int1 = 8;
			int2 = 34;
			int3 = 37;
			break;
		case 135:
			int1 = 135;
			break;
		case 136:
			int1 = 135;
			int2 = 136;
			break;
		case 137:
			int1 = 135;
			int2 = 136;
			int3 = 137;
			break;
		case 138:
			int1 = 138;
			break;
		case 139:
			int1 = 138;
			int2 = 139;
			break;
		case 140:
			int1 = 138;
			int2 = 139;
			int3 = 140;
			break;
		case 141:
			int1 = 141;
			break;
		case 142:
			int1 = 141;
			int2 = 142;
			break;
		case 143:
			int1 = 141;
			int2 = 142;
			int3 = 143;
			break;
		case 144:
			int1 = 144;
			break;
		case 145:
			int1 = 144;
			int2 = 145;
			break;
		case 146:
			int1 = 144;
			int2 = 145;
			int3 = 146;
			break;
		case 147:
			int1 = 144;
			int2 = 145;
			int3 = 146;
			int4 = 147;
			break;
		case 148:
			int1 = 144;
			int2 = 145;
			int3 = 146;
			int4 = 147;
			int5 = 148;
			break;
		case 149:
			int1 = 144;
			int2 = 145;
			int3 = 146;
			int4 = 147;
			int5 = 148;
			int6 = 149;
			break;
		case 150:
			int1 = 150;
			break;
		case 151:
			int1 = 150;
			int2 = 151;
			break;
		case 152:
			int1 = 150;
			int2 = 151;
			int3 = 152;
			break;
		case 159:
			int1 = 159;
			break;
		case 160:
			int1 = 159;
			int2 = 160;
			break;
		case 161:
			int1 = 159;
			int2 = 160;
			int3 = 161;
			break;
		case 164:
			int1 = 164;
			break;
		case 165:
			int1 = 164;
			int2 = 165;
			break;
		case 166:
			int1 = 164;
			int2 = 165;
			int3 = 166;
			break;
		case 271:
			int1 = 271;
			break;
		case 272:
			int1 = 271;
			int2 = 272;
			break;
		case 273:
			int1 = 271;
			int2 = 272;
			int3 = 273;
			break;
		case 167:
			int1 = 167;
			break;
		case 168:
			int1 = 167;
			int2 = 168;
			break;
		case 169:
			int1 = 167;
			int2 = 168;
			int3 = 169;
			break;
		case 170:
			int1 = 167;
			int2 = 168;
			int3 = 169;
			int4 = 170;
			break;
		case 171:
			int1 = 167;
			int2 = 168;
			int3 = 169;
			int4 = 170;
			int5 = 171;
			break;
		case 172:
			int1 = 167;
			int2 = 168;
			int3 = 169;
			int4 = 170;
			int5 = 171;
			int6 = 172;
			break;
		case 181:
			int1 = 181;
			break;
		case 200:
			int1 = 181;
			int2 = 200;
			break;
		case 182:
			int1 = 182;
			break;
		case 184:
			int1 = 182;
			int2 = 184;
			break;
		case 201:
			int1 = 201;
			break;
		case 269:
			int1 = 201;
			int2 = 269;
			break;
		case 180:
			int1 = 180;
			break;
		case 176:
			int1 = 176;
			break;
		case 270:
			int1 = 270;
			break;
		case 131:
			int1 = 131;
		}
	}
	return;
	effect efNext;
	if ((((((GetHasSpellEffect(int1, objectParam1) || GetHasSpellEffect(int2, objectParam1)) || GetHasSpellEffect(int3, objectParam1)) || GetHasSpellEffect(int4, objectParam1)) || GetHasSpellEffect(int5, objectParam1)) || GetHasSpellEffect(int6, objectParam1))) {
		efNext = GetFirstEffect(objectParam1);
		while (GetIsEffectValid(efNext)) {
			if (((((((GetEffectSpellId(efNext) == int1) || (GetEffectSpellId(efNext) == int2)) || (GetEffectSpellId(efNext) == int3)) || (GetEffectSpellId(efNext) == int4)) || (GetEffectSpellId(efNext) == int5)) || (GetEffectSpellId(efNext) == int6))) {
				RemoveEffect(objectParam1, efNext);
			}
			efNext = GetNextEffect(objectParam1);
		}
	}
}

void sub1() {
	object oTarget = GetSpellTargetObject();
	effect efPoison;
	effect effect2;
	effect effect3;
	intGLOB_7 = 4;
	if (((GetTag(oTarget) == "Calo082") && (GetSpellId() == 23))) {
		DisplayFeedBackText(oTarget, 1);
		return;
	}
	if (((GetTag(oTarget) == "vaklu") && (GetSpellId() == 200))) {
		DisplayFeedBackText(oTarget, 1);
		return;
	}
	else {
		if (((GetTag(oTarget) == "npc_bralor") && (GetSpellId() == 200))) {
			DisplayFeedBackText(oTarget, 1);
			return;
		}
	}
	switch (GetSpellId()) {
		case 7:
			if ((!GetIsPoisoned(oTarget))) {
				sub2(oTarget, 7);
				if ((!sub3(oTarget, 7))) {
					intGLOB_6 = 1;
					efPoison = EffectPoison(1);
					efPoison = EffectLinkEffects(efPoison, EffectMovementSpeedDecrease(50));
					efPoison = SetEffectIcon(efPoison, 1);
					sub4(0, oTarget, 0.0, 1, efPoison, 21.0, effect3, 0.0, 7);
				}
			}
			else {
				ApplyEffectToObject(0, EffectForceResisted(OBJECT_SELF), oTarget, 0.0);
			}
			break;
		case 9:
			intGLOB_6 = 1;
			intGLOB_1 = 1;
			intGLOB_3 = sub10(oTarget, 0, 0, ((GetHitDice(OBJECT_SELF) * 2) / 3));
			intGLOB_4 = 1;
			intGLOB_5 = 1004;
			efPoison = EffectAbilityDecrease(2, 4);
			efPoison = EffectLinkEffects(efPoison, EffectAbilityDecrease(0, 4));
			efPoison = EffectLinkEffects(efPoison, EffectAbilityDecrease(1, 4));
			efPoison = SetEffectIcon(efPoison, 3);
			{
				effect efChoke = EffectChoke();
				effect efDamage = EffectDamage(intGLOB_3, intGLOB_4, 0);
				int int9 = sub5(oTarget, efChoke, efDamage, effect3);
				int int11;
				SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
				if ((int9 == 0)) {
				int11 = sub6(oTarget, 0);
				if ((int11 == 0)) {
					ApplyEffectToObject(0, EffectVisualEffect(1004, 0), oTarget, 0.0);
					ApplyEffectToObject(1, efChoke, oTarget, 6.0);
					float float1 = sub11(24.0);
					ApplyEffectToObject(1, efPoison, oTarget, float1);
					int int14 = 1;
					float float3;
					sub12(efDamage, 7, oTarget);
				}
				}
				if (((int9 > 0) || (int11 > 0))) {
					ApplyEffectToObject(0, EffectForceFizzle(), OBJECT_SELF, 0.0);
				}
			}
			break;
		case 10:
			intGLOB_6 = 0;
			{
				int int15 = 1;
				int int16 = ((((GetAbilityModifier(4, OBJECT_SELF) + GetAbilityModifier(5, OBJECT_SELF)) * int15) + 5) + GetHitDice(OBJECT_SELF));
				effect efVisual = EffectVisualEffect(1005, 0);
				int int20 = 0;
				object oNearest;
				if (IsObjectPartyMember(OBJECT_SELF)) {
				oNearest = GetPartyMemberByIndex(int20);
				}
				else {
				oNearest = OBJECT_SELF;
				}
				while ((int20 < 3)) {
				if (((GetIsObjectValid(oNearest) && (GetRacialType(oNearest) != 5)) && (GetDistanceBetween(OBJECT_SELF, oNearest) < 15.0))) {
					SignalEvent(oNearest, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 0));
					ApplyEffectToObject(0, efVisual, oNearest, 0.0);
					ApplyEffectToObject(0, EffectHeal(int16), oNearest, 0.0);
				}
					(int20++);
				if (IsObjectPartyMember(OBJECT_SELF)) {
					oNearest = GetPartyMemberByIndex(int20);
				}
				else {
					oNearest = GetNearestCreature(3, 0, OBJECT_SELF, int20, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
				}
				}
			}
			break;
		case 11:
			intGLOB_6 = 1;
			intGLOB_1 = 1;
			intGLOB_2 = 11;
			{
				int nLevel = GetHitDice(OBJECT_SELF);
				if ((nLevel > 10)) {
				nLevel = 10;
				}
				intGLOB_3 = sub10(oTarget, nLevel, 4, 0);
				intGLOB_4 = 512;
				intGLOB_5 = 1006;
				int int29;
				int int30 = (intGLOB_3 / 2);
				effect effect24;
				effect efBeam = EffectBeam(2026, OBJECT_SELF, 2, 0);
				effect effect27 = EffectVisualEffect(1006, 0);
				object oShapeObject = GetFirstObjectInShape(4, 12.0, GetLocation(OBJECT_SELF), 0, 1, [0.0,0.0,0.0]);
				while (GetIsObjectValid(oShapeObject)) {
				{
					int int32 = sub5(oShapeObject, efPoison, effect2, effect24);
					if ((((GetRacialType(oShapeObject) == 6) && (GetRacialType(oShapeObject) != 5)) || (GetObjectType(oShapeObject) == 64))) {
					if (GetIsEnemy(oShapeObject, OBJECT_SELF)) {
						SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
						if ((int32 == 0)) {
							int int39 = sub6(oShapeObject, 0);
							if ((int39 == 0)) {
								effect24 = EffectDamage(intGLOB_3, intGLOB_4, 0);
								int29 = (int29 + intGLOB_3);
							}
							else {
								effect24 = EffectDamage(int30, intGLOB_4, 0);
								int29 = (int29 + int30);
							}
							ApplyEffectToObject(0, effect27, oShapeObject, 0.0);
							ApplyEffectToObject(0, effect24, oShapeObject, 0.0);
							ApplyEffectToObject(1, efBeam, oShapeObject, floatGLOB_1);
						}
					}
					}
					oShapeObject = GetNextObjectInShape(4, 12.0, GetLocation(OBJECT_SELF), 0, 1, [0.0,0.0,0.0]);
				}
				}
				if (((GetCurrentHitPoints(OBJECT_SELF) < GetMaxHitPoints(OBJECT_SELF)) && (int29 > 0))) {
					ApplyEffectToObject(0, EffectHeal(int29), OBJECT_SELF, 0.0);
				}
			}
			break;
		case 15:
			intGLOB_6 = 1;
			intGLOB_1 = 1;
			int int43 = GetHitDice(OBJECT_SELF);
			int int45 = GetHitDice(OBJECT_SELF);
			if ((int45 > 10)) {
				int45 = 10;
			}
			intGLOB_3 = sub10(oTarget, int45, 4, 0);
			intGLOB_4 = 512;
			intGLOB_5 = 1009;
			effect effect32 = EffectBeam(2029, OBJECT_SELF, 0, 0);
			effect effect34 = EffectVisualEffect(intGLOB_5, 0);
			effect effect36;
			effect effect37 = EffectDamage(intGLOB_3, 512, 0);
			ApplyEffectToObject(1, effect32, oTarget, floatGLOB_1);
			DelayCommand(0.3, ApplyEffectToObject(0, effect34, oTarget, 0.0));
			int int48;
		case 13:
		case 12:
		case 47:
		case 16:
		case 17:
		case 18:
		case 19:
		case 20:
		case 23:
		case 22:
		case 24:
		case 25:
		case 26:
		case 27:
		case 28:
		case 134:
		case 30:
		case 31:
		case 32:
		case 33:
		case 34:
		case 49:
		case 4:
		case 35:
		case 36:
		case 38:
		case 40:
		case 133:
		case 41:
		case 42:
		case 43:
		case 29:
		case 44:
		case 45:
		case 8:
		case 37:
		case 46:
		case 48:
		case 50:
		case 176:
		case 52:
		case 59:
		case 57:
		case 63:
		case 83:
		case 130:
		case 131:
		case 135:
		case 136:
		case 137:
		case 138:
		case 139:
		case 140:
		case 141:
		case 142:
		case 143:
		case 144:
		case 145:
		case 146:
		case 147:
		case 148:
		case 149:
		case 150:
		case 151:
		case 152:
		case 153:
		case 154:
		case 155:
		case 159:
		case 160:
		case 161:
		case 164:
		case 165:
		case 166:
		case 271:
		case 272:
		case 273:
		case 167:
		case 168:
		case 169:
		case 170:
		case 171:
		case 172:
		case 173:
		case 174:
		case 175:
		case 177:
		case 180:
		case 200:
		case 181:
		case 184:
		case 182:
		case 269:
		case 201:
		case 270:
	}
}

void main() {
	sub1();
}


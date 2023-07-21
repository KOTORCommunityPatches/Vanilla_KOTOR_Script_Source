// Prototypes
void sub1(int intParam1, int intParam2);

void sub1(int intParam1, int intParam2) {
	int int1;
	object oShapeObject;
	if ((intParam1 == 124)) {
		int1 = 15;
	}
	else {
		if ((intParam1 == 125)) {
			int1 = 20;
		}
	}
	effect efVisual = EffectVisualEffect(3013, 0);
	effect effect3 = EffectVisualEffect(3018, 0);
	effect effect5 = EffectMovementSpeedDecrease(75);
	effect effect7 = EffectACDecrease(4, 0, 8199);
	effect effect9 = EffectLinkEffects(effect5, effect7);
	effect9 = SetEffectIcon(effect9, 61);
	ApplyEffectToObject(0, efVisual, OBJECT_SELF, 0.0);
	ApplyEffectToObject(0, effect3, OBJECT_SELF, 0.0);
	oShapeObject = GetFirstObjectInShape(4, 15.0, GetLocation(OBJECT_SELF), 0, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		if (GetIsEnemy(oShapeObject, OBJECT_SELF)) {
			if ((!ReflexSave(oShapeObject, int1, 0, OBJECT_SELF))) {
				if (((!GetHasSpellEffect(124, oShapeObject)) && (!GetHasSpellEffect(125, oShapeObject)))) {
					ApplyEffectToObject(1, effect9, oShapeObject, 9.0);
				}
			}
		}
		oShapeObject = GetNextObjectInShape(4, 15.0, GetLocation(OBJECT_SELF), 0, 1, [0.0,0.0,0.0]);
	}
}

void main() {
	int int1 = GetSpellId();
	int int3;
	int int4;
	float float1;
	object oTarget;
	effect efBeam;
	effect efDamage;
	if (((int1 == 116) || (int1 == 117))) {
		oTarget = GetSpellTargetObject();
		if ((int1 == 116)) {
			int3 = 15;
		}
		else {
			if ((int1 == 117)) {
				int3 = 20;
			}
		}
		effect efStun = EffectStunned();
		efStun = SetEffectIcon(efStun, 55);
		efBeam = EffectBeam(2052, OBJECT_SELF, 0, 0);
		ApplyEffectToObject(1, efBeam, oTarget, 1.0);
		if ((!WillSave(oTarget, int3, 10, OBJECT_SELF))) {
			ApplyEffectToObject(1, efStun, oTarget, RoundsToSeconds(3));
		}
	}
	else {
		if (((int1 == 118) || (int1 == 119))) {
			oTarget = GetSpellTargetObject();
			if ((int1 == 118)) {
				int4 = 20;
			}
			else {
				if ((int1 == 119)) {
					int4 = 40;
				}
			}
			efDamage = EffectDamage(int4, 2048, 0);
			effect effect8 = EffectBeam(2049, OBJECT_SELF, 0, 0);
			effect effect10 = EffectBeam(2050, OBJECT_SELF, 0, 0);
			ApplyEffectToObject(1, effect10, oTarget, 1.0);
			ApplyEffectToObject(1, effect8, oTarget, 1.0);
			ApplyEffectToObject(0, efDamage, oTarget, 0.0);
		}
		else {
			if (((int1 == 120) || (int1 == 121))) {
				oTarget = GetSpellTargetObject();
				if ((int1 == 120)) {
					int4 = 30;
					int3 = 15;
				}
				else {
					if ((int1 == 121)) {
						int4 = 60;
						int3 = 20;
					}
				}
				efBeam = EffectBeam(2053, OBJECT_SELF, 0, 0);
				effect efVisual = EffectVisualEffect(1039, 0);
				effect effect15 = EffectVisualEffect(2062, 0);
				effect effect17 = EffectHorrified();
				effect17 = SetEffectIcon(effect17, 57);
				ApplyEffectToObject(0, efVisual, oTarget, 0.0);
				ApplyEffectToObject(1, efBeam, oTarget, 1.0);
				if (((GetHitDice(oTarget) < 7) || (FortitudeSave(oTarget, 15, 0, OBJECT_SELF) == 0))) {
					ApplyEffectToObject(1, effect17, oTarget, 3.0);
				}
				DelayCommand(0.33, ApplyEffectToObject(1, effect15, oTarget, 1.5));
				if (ReflexSave(oTarget, int3, 9, OBJECT_SELF)) {
					int4 = (int4 / 2);
				}
				efDamage = EffectDamage(int4, 256, 0);
				ApplyEffectToObject(0, efDamage, oTarget, 0.0);
			}
			else {
				if (((int1 == 122) || (int1 == 123))) {
					oTarget = GetSpellTargetObject();
					if ((int1 == 122)) {
						int4 = 20;
						int3 = 15;
						float1 = 9.0;
					}
					else {
						if ((int1 == 123)) {
							int4 = 40;
							int3 = 20;
							float1 = 15.0;
						}
					}
					efBeam = EffectBeam(2051, OBJECT_SELF, 0, 0);
					effect effect22 = EffectVisualEffect(2055, 0);
					effect effect24 = EffectVisualEffect(2054, 0);
					effect effect26;
					if ((GetRacialType(oTarget) != 5)) {
						effect26 = EffectCutSceneParalyze();
					}
					else {
						effect26 = EffectDroidStun();
					}
					effect26 = SetEffectIcon(effect26, 59);
					ApplyEffectToObject(1, efBeam, oTarget, 1.0);
					if (ReflexSave(oTarget, int3, 3, OBJECT_SELF)) {
						int4 = (int4 / 2);
						float1 = (float1 - 6.0);
					}
					ApplyEffectToObject(1, effect24, oTarget, float1);
					ApplyEffectToObject(1, effect22, oTarget, float1);
					efDamage = EffectDamage(int4, 32, 0);
					ApplyEffectToObject(0, efDamage, oTarget, 0.0);
					ApplyEffectToObject(1, effect26, oTarget, float1);
				}
				else {
					if (((int1 == 124) || (int1 == 125))) {
						sub1(int1, 13);
					}
				}
			}
		}
	}
}


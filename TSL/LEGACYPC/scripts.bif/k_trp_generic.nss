// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int int1;
	object oShapeObject;
	int int2 = GetTrapBaseType(OBJECT_SELF);
	location location1 = GetLocation(OBJECT_SELF);
	sub1("Trap Fired", 5, 5, 4.0);
	if ((((((int2 == 0) || (int2 == 1)) || (int2 == 17)) || (int2 == 2)) || (int2 == 18))) {
		if ((int2 == 0)) {
			int1 = 15;
		}
		if ((int2 == 1)) {
			int1 = 20;
		}
		if ((int2 == 17)) {
			int1 = 25;
		}
		if ((int2 == 2)) {
			int1 = 30;
		}
		if ((int2 == 18)) {
			int1 = 35;
		}
		float float1 = 3.3;
		int int4 = GetOwnerDemolitionsSkill(OBJECT_SELF);
		if ((int4 > 0)) {
			float1 = (float1 + (0.1 * int4));
		}
		int1 = (int1 + (int4 / 5));
		effect efStun = EffectStunned();
		efStun = SetEffectIcon(efStun, 63);
		oShapeObject = GetFirstObjectInShape(4, float1, location1, 1, 1, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if ((((!WillSave(oShapeObject, 15, 0, OBJECT_SELF)) && (GetRacialType(oShapeObject) != 5)) && (!GetIsNeutral(oShapeObject, OBJECT_SELF)))) {
				ApplyEffectToObject(1, efStun, oShapeObject, RoundsToSeconds(3));
			}
			oShapeObject = GetNextObjectInShape(4, float1, location1, 1, 1, [0.0,0.0,0.0]);
		}
	}
	else {
		if ((((((int2 == 3) || (int2 == 4)) || (int2 == 19)) || (int2 == 5)) || (int2 == 20))) {
			int int10;
			int int11;
			effect efDamage;
			if ((int2 == 3)) {
				int11 = 18;
				int1 = 15;
			}
			if ((int2 == 4)) {
				int11 = 30;
				int1 = 20;
			}
			if ((int2 == 19)) {
				int11 = 42;
				int1 = 25;
			}
			if ((int2 == 5)) {
				int11 = 54;
				int1 = 30;
			}
			if ((int2 == 20)) {
				int11 = 66;
				int1 = 35;
			}
			int int12 = GetOwnerDemolitionsSkill(OBJECT_SELF);
			if ((int12 > 0)) {
				int11 = (int11 + int12);
			}
			float float3 = 3.3;
			if ((int12 > 0)) {
				float3 = (float3 + (0.1 * int12));
			}
			oShapeObject = GetFirstObjectInShape(4, float3, location1, 1, 1, [0.0,0.0,0.0]);
			while (GetIsObjectValid(oShapeObject)) {
				if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
					int11 = GetReflexAdjustedDamage(int11, oShapeObject, int1, 0, OBJECT_SELF);
					efDamage = EffectDamage(int11, 2, 0);
					ApplyEffectToObject(0, efDamage, oShapeObject, 0.0);
				}
				oShapeObject = GetNextObjectInShape(4, float3, location1, 1, 1, [0.0,0.0,0.0]);
			}
		}
		else {
			if ((((((int2 == 6) || (int2 == 7)) || (int2 == 21)) || (int2 == 8)) || (int2 == 22))) {
				ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetLocation(OBJECT_SELF), 0.0);
				int int17;
				int int18;
				effect effect7;
				if ((int2 == 6)) {
					int18 = 24;
					int1 = 15;
				}
				if ((int2 == 7)) {
					int18 = 42;
					int1 = 20;
				}
				if ((int2 == 21)) {
					int18 = 60;
					int1 = 25;
				}
				if ((int2 == 8)) {
					int18 = 78;
					int1 = 30;
				}
				if ((int2 == 22)) {
					int18 = 96;
					int1 = 35;
				}
				int int19 = GetOwnerDemolitionsSkill(OBJECT_SELF);
				if ((int19 > 0)) {
					int18 = (int18 + ((3 * int19) / 2));
				}
				float float4 = 3.3;
				if ((int19 > 0)) {
					float4 = (float4 + (0.1 * int19));
				}
				oShapeObject = GetFirstObjectInShape(4, float4, location1, 1, 1, [0.0,0.0,0.0]);
				while (GetIsObjectValid(oShapeObject)) {
					if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
						int18 = GetReflexAdjustedDamage(int18, oShapeObject, int1, 0, OBJECT_SELF);
						effect7 = EffectDamage(int18, 4096, 0);
						ApplyEffectToObject(0, effect7, oShapeObject, 0.0);
					}
					oShapeObject = GetNextObjectInShape(4, float4, location1, 1, 1, [0.0,0.0,0.0]);
				}
			}
			else {
				if ((((((int2 == 9) || (int2 == 10)) || (int2 == 23)) || (int2 == 11)) || (int2 == 24))) {
					effect efPoison;
					if ((int2 == 9)) {
						efPoison = EffectPoison(3);
					}
					if ((int2 == 10)) {
						efPoison = EffectPoison(4);
					}
					if ((int2 == 23)) {
						efPoison = EffectPoison(6);
					}
					if ((int2 == 11)) {
						efPoison = EffectPoison(5);
					}
					if ((int2 == 24)) {
						efPoison = EffectPoison(7);
					}
					efPoison = SetEffectIcon(efPoison, 110);
					float float5 = 3.3;
					int int24 = GetOwnerDemolitionsSkill(OBJECT_SELF);
					if ((int24 > 0)) {
						float5 = (float5 + (0.2 * int24));
					}
					oShapeObject = GetFirstObjectInShape(4, float5, location1, 1, 1, [0.0,0.0,0.0]);
					while (GetIsObjectValid(oShapeObject)) {
						if (((GetRacialType(oShapeObject) != 5) && (!GetIsNeutral(oShapeObject, OBJECT_SELF)))) {
							ApplyEffectToObject(2, efPoison, oShapeObject, 0.0);
						}
						oShapeObject = GetNextObjectInShape(4, float5, location1, 1, 1, [0.0,0.0,0.0]);
					}
				}
				else {
					if ((((((int2 == 14) || (int2 == 15)) || (int2 == 25)) || (int2 == 16)) || (int2 == 26))) {
						int int29;
						effect effect16;
						int int30;
						effect effect17;
						if (((int2 == 14) || (int2 == 15))) {
							effect17 = EffectAbilityDecrease(1, 2);
						}
						else {
							if (((int2 == 25) || (int2 == 16))) {
								effect17 = EffectAbilityDecrease(1, 4);
							}
							else {
								effect17 = EffectAbilityDecrease(1, 6);
							}
						}
						effect17 = SetEffectIcon(effect17, 112);
						if ((int2 == 14)) {
							int30 = 18;
							int1 = 15;
						}
						if ((int2 == 15)) {
							int30 = 30;
							int1 = 20;
						}
						if ((int2 == 25)) {
							int30 = 42;
							int1 = 25;
						}
						if ((int2 == 16)) {
							int30 = 54;
							int1 = 30;
						}
						if ((int2 == 26)) {
							int30 = 66;
							int1 = 35;
						}
						int int31 = GetOwnerDemolitionsSkill(OBJECT_SELF);
						if ((int31 > 0)) {
							int30 = (int30 + int31);
						}
						float float6 = 3.3;
						if ((int31 > 0)) {
							float6 = (float6 + (0.1 * int31));
						}
						oShapeObject = GetFirstObjectInShape(4, float6, location1, 1, 1, [0.0,0.0,0.0]);
						ApplyEffectAtLocation(0, EffectVisualEffect(3007, 0), GetSpellTargetLocation(), 0.0);
						while (GetIsObjectValid(oShapeObject)) {
							if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
								int int35 = GetReflexAdjustedDamage(int30, oShapeObject, int1, 0, OBJECT_SELF);
								effect16 = EffectDamage(int35, 1024, 0);
								ApplyEffectToObject(0, effect16, oShapeObject, 0.0);
								if ((int30 <= int35)) {
									ApplyEffectToObject(1, effect17, oShapeObject, 30.0);
								}
							}
							oShapeObject = GetNextObjectInShape(4, float6, location1, 1, 1, [0.0,0.0,0.0]);
						}
					}
				}
			}
		}
	}
}


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
	if ((((int2 == 0) || (int2 == 1)) || (int2 == 2))) {
		if ((int2 == 0)) {
			int1 = 15;
		}
		if ((int2 == 1)) {
			int1 = 20;
		}
		if ((int2 == 2)) {
			int1 = 25;
		}
		effect efStun = EffectStunned();
		oShapeObject = GetFirstObjectInShape(4, 3.3, location1, 1, 1, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if ((((!WillSave(oShapeObject, 15, 0, OBJECT_SELF)) && (GetRacialType(oShapeObject) != 5)) && (!GetIsNeutral(oShapeObject, OBJECT_SELF)))) {
				ApplyEffectToObject(1, efStun, oShapeObject, RoundsToSeconds(3));
			}
			oShapeObject = GetNextObjectInShape(4, 3.3, location1, 1, 1, [0.0,0.0,0.0]);
		}
	}
	else {
		if ((((int2 == 3) || (int2 == 4)) || (int2 == 5))) {
			int int8;
			int int9;
			effect efDamage;
			if ((int2 == 3)) {
				int9 = 18;
				int1 = 15;
			}
			if ((int2 == 4)) {
				int9 = 30;
				int1 = 20;
			}
			if ((int2 == 5)) {
				int9 = 54;
				int1 = 25;
			}
			oShapeObject = GetFirstObjectInShape(4, 3.3, location1, 1, 1, [0.0,0.0,0.0]);
			while (GetIsObjectValid(oShapeObject)) {
				if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
					int9 = GetReflexAdjustedDamage(int9, oShapeObject, int1, 0, OBJECT_SELF);
					efDamage = EffectDamage(int9, 2, 0);
					ApplyEffectToObject(0, efDamage, oShapeObject, 0.0);
				}
				oShapeObject = GetNextObjectInShape(4, 3.3, location1, 1, 1, [0.0,0.0,0.0]);
			}
		}
		else {
			if ((((int2 == 6) || (int2 == 7)) || (int2 == 8))) {
				ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetLocation(OBJECT_SELF), 0.0);
				int int13;
				int int14;
				effect effect6;
				if ((int2 == 6)) {
					int14 = 24;
					int1 = 15;
				}
				if ((int2 == 7)) {
					int14 = 42;
					int1 = 20;
				}
				if ((int2 == 8)) {
					int14 = 72;
					int1 = 25;
				}
				oShapeObject = GetFirstObjectInShape(4, 3.3, location1, 1, 1, [0.0,0.0,0.0]);
				while (GetIsObjectValid(oShapeObject)) {
					if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
						int14 = GetReflexAdjustedDamage(int14, oShapeObject, int1, 0, OBJECT_SELF);
						effect6 = EffectDamage(int14, 4096, 0);
						ApplyEffectToObject(0, effect6, oShapeObject, 0.0);
					}
					oShapeObject = GetNextObjectInShape(4, 3.3, location1, 1, 1, [0.0,0.0,0.0]);
				}
			}
			else {
				if ((((int2 == 9) || 10) || 11)) {
					effect efPoison;
					if ((int2 == 9)) {
						efPoison = EffectPoison(3);
					}
					if ((int2 == 10)) {
						efPoison = EffectPoison(4);
					}
					if ((int2 == 11)) {
						efPoison = EffectPoison(5);
					}
					oShapeObject = GetFirstObjectInShape(4, 3.3, location1, 1, 1, [0.0,0.0,0.0]);
					while (GetIsObjectValid(oShapeObject)) {
						if (((GetRacialType(oShapeObject) != 5) && (!GetIsNeutral(oShapeObject, OBJECT_SELF)))) {
							if ((!GetIsPoisoned(oShapeObject))) {
								ApplyEffectToObject(2, efPoison, oShapeObject, 0.0);
							}
						}
						oShapeObject = GetNextObjectInShape(4, 3.3, location1, 1, 1, [0.0,0.0,0.0]);
					}
				}
			}
		}
	}
}


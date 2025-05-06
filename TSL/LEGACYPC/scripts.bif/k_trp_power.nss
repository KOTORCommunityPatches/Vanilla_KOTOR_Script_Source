struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int int1;
	int int2;
	object oShapeObject;
	int int3 = 4;
	effect efBeam = EffectBeam(2061, OBJECT_SELF, 2, 0);
	effect efVisual = EffectVisualEffect(1021, 0);
	int2 = 1021;
	float float1 = 1.0;
	effect effect5 = EffectBeam(2038, OBJECT_SELF, 0, 0);
	location location1 = GetLocation(OBJECT_SELF);
	oShapeObject = GetFirstObjectInShape(4, 8.0, location1, 1, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		if (((((!IsStealthed(oShapeObject)) && IsRunning(oShapeObject)) && (!GetFactionEqual(oShapeObject, OBJECT_SELF))) && HasLineOfSight(GetPosition(OBJECT_SELF), GetPosition(oShapeObject), OBJECT_SELF, oShapeObject))) {
			if ((!ReflexSave(oShapeObject, 15, 0, OBJECT_SELF))) {
				ApplyEffectToObject(0, EffectDamage(int3, 128, 0), oShapeObject, 0.0);
				ApplyEffectToObject(0, efVisual, oShapeObject, 0.0);
				ApplyEffectToObject(1, effect5, oShapeObject, float1);
			}
			else {
				int int10;
				if (GetHasFeat(125, oShapeObject)) {
					int10 = 0;
				}
				else {
					int10 = (int3 / 2);
				}
				ApplyEffectToObject(0, EffectDamage(int10, 128, 0), oShapeObject, 0.0);
				ApplyEffectToObject(0, efVisual, oShapeObject, 0.0);
				ApplyEffectToObject(1, effect5, oShapeObject, float1);
			}
		}
		oShapeObject = GetNextObjectInShape(4, 8.0, location1, 1, 1, [0.0,0.0,0.0]);
	}
}


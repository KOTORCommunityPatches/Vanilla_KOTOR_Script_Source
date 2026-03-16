void main() {
	location location1 = GetLocation(OBJECT_SELF);
	effect efDeath = EffectDeath(0, 1, 0);
	effect efVisual = EffectVisualEffect(3002, 0);
	float float1 = 15.0;
	float float2 = 10.0;
	string string1 = GetTag(GetArea(OBJECT_SELF));
	if (((string1 == "manm28ab") || (string1 == "manm28ad"))) {
		object oShapeObject = GetFirstObjectInShape(4, float1, location1, 0, 1, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if ((GetStringLeft(GetTag(oShapeObject), 12) == "man28_firixa")) {
				ApplyEffectToObject(1, efDeath, oShapeObject, 0.0);
			}
			oShapeObject = GetNextObjectInShape(4, float1, location1, 0, 1, [0.0,0.0,0.0]);
		}
		ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	}
}


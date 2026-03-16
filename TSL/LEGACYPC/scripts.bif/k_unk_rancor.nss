void main() {
	int int1 = 3006;
	effect efDeath = EffectDeath(0, 1, 0);
	object oShapeObject = GetFirstObjectInShape(4, 5.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
	while ((GetIsObjectValid(oShapeObject) == 1)) {
		if (((!GetIsNeutral(oShapeObject, OBJECT_SELF)) && (FindSubString(GetTag(oShapeObject), "rancor") >= 0))) {
			ApplyEffectToObject(2, efDeath, oShapeObject, 0.0);
		}
		oShapeObject = GetNextObjectInShape(4, 5.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
	}
	ApplyEffectAtLocation(0, EffectVisualEffect(int1, 0), GetSpellTargetLocation(), 0.0);
}


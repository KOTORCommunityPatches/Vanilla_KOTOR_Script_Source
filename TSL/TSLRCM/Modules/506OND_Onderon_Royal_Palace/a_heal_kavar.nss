void main() {
	object object1 = OBJECT_SELF;
	effect efVisual = EffectVisualEffect(1019, 0);
	if (GetIsObjectValid(object1)) {
		int int2 = (GetMaxHitPoints(object1) - GetCurrentHitPoints(object1));
		if ((int2 > 0)) {
			ApplyEffectToObject(1, efVisual, object1, 3.0);
			ApplyEffectToObject(0, EffectHeal(int2), object1, 0.0);
		}
	}
}
void main() {
	object oTT32 = GetObjectByTag("TT32", 0);
	if (GetIsObjectValid(oTT32)) {
		effect efVisual = EffectVisualEffect(6001, 0);
		effect effect3 = EffectVisualEffect(2067, 0);
		effect efDamage = EffectDamage((GetCurrentHitPoints(oTT32) - 1), 8, 0);
		ApplyEffectToObject(0, efVisual, oTT32, 0.0);
		ApplyEffectToObject(2, effect3, oTT32, 0.0);
		ApplyEffectToObject(0, efDamage, oTT32, 0.0);
	}
}

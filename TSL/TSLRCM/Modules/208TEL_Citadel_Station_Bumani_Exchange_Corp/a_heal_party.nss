void main() {
	object oPC = GetFirstPC();
	object oKreia = GetObjectByTag("kreia", 0);
	object oAtton = GetObjectByTag("atton", 0);
	int int1 = (GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC));
	if ((int1 > 0)) {
		if (GetIsObjectValid(oPC)) {
			ApplyEffectToObject(0, EffectHeal(int1), oPC, 0.0);
		}
	}
	int1 = (GetMaxHitPoints(oKreia) - GetCurrentHitPoints(oKreia));
	if ((int1 > 0)) {
		if (GetIsObjectValid(oKreia)) {
			ApplyEffectToObject(0, EffectHeal(int1), oKreia, 0.0);
		}
	}
	int1 = (GetMaxHitPoints(oAtton) - GetCurrentHitPoints(oAtton));
	if ((int1 > 0)) {
		if (GetIsObjectValid(oAtton)) {
			ApplyEffectToObject(0, EffectHeal(int1), oAtton, 0.0);
		}
	}
}
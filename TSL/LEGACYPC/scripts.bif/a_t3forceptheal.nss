void main() {
	object oPC = GetFirstPC();
	object oT3M4 = GetObjectByTag("T3M4", 0);
	int int1 = (GetMaxForcePoints(oPC) - GetCurrentForcePoints(oPC));
	if ((int1 > 0)) {
		if (GetIsObjectValid(oPC)) {
			ApplyEffectToObject(0, EffectHealForcePoints(int1), oPC, 0.0);
		}
	}
	int int5 = (GetMaxHitPoints(oT3M4) - GetCurrentHitPoints(oT3M4));
	if ((int5 > 0)) {
		if (GetIsObjectValid(oT3M4)) {
			ApplyEffectToObject(0, EffectHeal(int5), oT3M4, 0.0);
		}
	}
}


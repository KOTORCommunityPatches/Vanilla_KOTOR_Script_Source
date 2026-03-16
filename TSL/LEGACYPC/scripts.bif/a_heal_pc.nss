void main() {
	object oPC = GetFirstPC();
	int int1 = (GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC));
	if ((int1 > 0)) {
		if (GetIsObjectValid(oPC)) {
			ApplyEffectToObject(0, EffectHealForcePoints(int1), oPC, 0.0);
		}
	}
}


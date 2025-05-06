void main() {
	object oPC = GetFirstPC();
	object oDisciple = GetObjectByTag("Disciple", 0);
	int int1 = (GetMaxForcePoints(oPC) - GetCurrentForcePoints(oPC));
	if ((int1 > 0)) {
		if (GetIsObjectValid(oPC)) {
			ApplyEffectToObject(0, EffectHealForcePoints(int1), oPC, 0.0);
		}
	}
	int int5 = (GetMaxHitPoints(oDisciple) - GetCurrentHitPoints(oDisciple));
	if ((int5 > 0)) {
		if (GetIsObjectValid(oDisciple)) {
			ApplyEffectToObject(0, EffectHealForcePoints(int5), oDisciple, 0.0);
		}
	}
}


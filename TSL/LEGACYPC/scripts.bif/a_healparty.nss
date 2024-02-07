void main() {
	object oPC = GetFirstPC();
	while (GetIsObjectValid(oPC)) {
		ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC))), oPC, 0.0);
		oPC = GetNextPC();
	}
}


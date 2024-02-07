void main() {
	object oPC = GetFirstPC();
	ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC))), oPC, 0.0);
}


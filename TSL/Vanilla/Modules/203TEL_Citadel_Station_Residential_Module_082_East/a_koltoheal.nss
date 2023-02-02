void main() {
	object oPC = GetFirstPC();
	while (GetIsObjectValid(oPC)) {
		{
			int int2 = (GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC));
			if ((int2 > 0)) {
				ApplyEffectToObject(0, EffectHeal(int2), oPC, 0.0);
			}
			oPC = GetNextPC();
		}
	}
}

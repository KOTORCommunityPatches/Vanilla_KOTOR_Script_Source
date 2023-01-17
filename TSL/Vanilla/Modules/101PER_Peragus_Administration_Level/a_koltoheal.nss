void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	int int1 = (GetMaxHitPoints(oNPC) - GetCurrentHitPoints(oNPC));
	if ((int1 > 0)) {
		if (GetIsObjectValid(oNPC)) {
			ApplyEffectToObject(0, EffectHeal(int1), oNPC, 0.0);
		}
	}
	int1 = (GetMaxHitPoints(object3) - GetCurrentHitPoints(object3));
	if ((int1 > 0)) {
		if (GetIsObjectValid(object3)) {
			ApplyEffectToObject(0, EffectHeal(int1), object3, 0.0);
		}
	}
	int1 = (GetMaxHitPoints(object5) - GetCurrentHitPoints(object5));
	if ((int1 > 0)) {
		if (GetIsObjectValid(object5)) {
			ApplyEffectToObject(0, EffectHeal(int1), object5, 0.0);
		}
	}
}


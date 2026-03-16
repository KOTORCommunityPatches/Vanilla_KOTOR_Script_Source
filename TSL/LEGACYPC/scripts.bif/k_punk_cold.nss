void main() {
	int int1;
	object oNPC;
	int1 = 0;
	while ((int1 < GetPartyMemberCount())) {
		oNPC = GetPartyMemberByIndex(int1);
		ApplyEffectToObject(1, EffectDamageImmunityIncrease(32, 100), oNPC, 60.0);
		(int1++);
	}
}


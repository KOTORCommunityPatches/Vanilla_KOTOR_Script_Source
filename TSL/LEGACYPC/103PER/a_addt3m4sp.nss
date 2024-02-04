void main() {
	AurPostString("Adding T3M4 to party...", 5, 5, 5.0);
	object oT3M4 = GetObjectByTag("T3M4", 0);
	effect efResurrect = EffectResurrection(100);
	AssignCommand(oT3M4, ClearAllEffects());
	ApplyEffectToObject(0, efResurrect, oT3M4, 0.0);
	AddPartyMember(8, oT3M4);
	SetNPCSelectability(8, 1);
}


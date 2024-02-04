void main() {
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	AssignCommand(oPC, ClearAllEffects());
	ApplyEffectToObject(1, EffectWhirlWind(), oVisasMarr, 50.0);
}
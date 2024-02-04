void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oKreia, ActionCastFakeSpellAtObject(23, GetObjectByTag("ForceWave", 0), 0));
	effect efPush = EffectForcePushTargeted(GetLocation(oKreia), 1);
	efPush = EffectLinkEffects(efPush, EffectVisualEffect(1014, 0));
	object oVrook = GetObjectByTag("Vrook", 0);
	AssignCommand(oVrook, ClearAllActions());
	DelayCommand(0.5, ApplyEffectToObject(1, efPush, oVrook, 0.3));
}
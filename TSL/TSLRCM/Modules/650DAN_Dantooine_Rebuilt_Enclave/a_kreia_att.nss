void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllEffects());
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionPlayAnimation(26, 1.0, (-1.0)));
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oKreia, ActionCastFakeSpellAtObject(26, GetObjectByTag("ForceWave", 0), 0));
	object oVrook = GetObjectByTag("Vrook", 0);
	object oKavar = GetObjectByTag("Kavar", 0);
	object oZezkaiell = GetObjectByTag("Zezkaiell", 0);
	AssignCommand(oKavar, ClearAllActions());
	AssignCommand(oVrook, ClearAllActions());
	AssignCommand(oZezkaiell, ClearAllActions());
	AssignCommand(oKavar, SetFacingPoint(GetPosition(oKreia)));
	AssignCommand(oVrook, SetFacingPoint(GetPosition(oKreia)));
	AssignCommand(oZezkaiell, SetFacingPoint(GetPosition(oKreia)));
	effect efPush = EffectForcePushTargeted(GetLocation(oKreia), 0);
	efPush = EffectLinkEffects(efPush, EffectVisualEffect(1014, 0));
	DelayCommand(0.5, ApplyEffectToObject(1, efPush, oVrook, 0.3));
	DelayCommand(0.5, ApplyEffectToObject(1, efPush, oKavar, 0.3));
	DelayCommand(0.5, ApplyEffectToObject(1, efPush, oZezkaiell, 0.3));
}
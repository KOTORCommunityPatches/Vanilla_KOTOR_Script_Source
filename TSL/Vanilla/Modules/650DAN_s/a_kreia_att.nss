void main() {
	object oVrook = GetObjectByTag("Vrook", 0);
	object oKavar = GetObjectByTag("Kavar", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	object oZezkaiell = GetObjectByTag("Zezkaiell", 0);
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oKavar, ClearAllActions());
	AssignCommand(oVrook, ClearAllActions());
	AssignCommand(oZezkaiell, ClearAllActions());
	AssignCommand(GetFirstPC(), ClearAllEffects());
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionPlayAnimation(26, 1.0, (-1.0)));
	effect efPush = EffectForcePushTargeted(GetLocation(GetObjectByTag("Kreia", 0)), 0);
	efPush = EffectLinkEffects(efPush, EffectVisualEffect(1014, 0));
	DelayCommand(0.5, ApplyEffectToObject(1, efPush, oVrook, 0.3));
	DelayCommand(0.5, ApplyEffectToObject(1, efPush, oKavar, 0.3));
	DelayCommand(0.5, ApplyEffectToObject(1, efPush, oZezkaiell, 0.3));
}


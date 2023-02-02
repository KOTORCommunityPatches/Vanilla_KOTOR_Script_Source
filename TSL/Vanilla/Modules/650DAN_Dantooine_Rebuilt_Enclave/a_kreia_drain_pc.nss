void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oPC = GetFirstPC();
	effect efBeam = EffectBeam(2029, oKreia, 0, 0);
	effect efVisual = EffectVisualEffect(1009, 0);
	DelayCommand(0.1, AssignCommand(GetObjectByTag("Kreia", 0), ActionPlayAnimation(121, 1.0, 0.0)));
	DelayCommand(0.5, ApplyEffectToObject(1, efBeam, oPC, 3.8));
	DelayCommand(0.7, ApplyEffectToObject(2, efVisual, oPC, 3.6));
	DelayCommand(0.7, AssignCommand(oPC, ActionPlayAnimation(21, 1.0, 2.9)));
	DelayCommand(3.5, AssignCommand(oPC, ClearAllActions()));
	DelayCommand(4.3, AssignCommand(oPC, ActionPlayAnimation(26, 1.0, (-1.0))));
}

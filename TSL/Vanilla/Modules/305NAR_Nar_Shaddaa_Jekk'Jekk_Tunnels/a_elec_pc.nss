void main() {
	object oWP_ELEC_1 = GetObjectByTag("WP_ELEC_1", 0);
	object oWP_ELEC_2 = GetObjectByTag("WP_ELEC_2", 0);
	object oWP_ELEC_3 = GetObjectByTag("WP_ELEC_3", 0);
	object oWP_ELEC_4 = GetObjectByTag("WP_ELEC_4", 0);
	object oPC = GetFirstPC();
	effect efBeam = EffectBeam(2038, GetFirstPC(), 1, 0);
	effect efVisual = EffectVisualEffect(1021, 0);
	DelayCommand(0.5, ApplyEffectToObject(1, efBeam, oWP_ELEC_1, 5.0));
	DelayCommand(0.7, ApplyEffectToObject(1, efBeam, oWP_ELEC_2, 5.0));
	DelayCommand(1.0, ApplyEffectToObject(1, efBeam, oWP_ELEC_3, 5.0));
	DelayCommand(1.3, ApplyEffectToObject(1, efBeam, oWP_ELEC_4, 5.0));
	DelayCommand(0.5, ApplyEffectToObject(1, efVisual, GetFirstPC(), 5.0));
	DelayCommand(0.5, AssignCommand(oPC, ActionPlayAnimation(21, 1.0, 5.0)));
	DelayCommand(5.5, AssignCommand(oPC, ClearAllActions()));
	DelayCommand(5.5, AssignCommand(oPC, ActionPlayAnimation(26, 1.0, (-1.0))));
}

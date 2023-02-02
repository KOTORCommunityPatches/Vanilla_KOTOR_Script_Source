void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("Kreia", 0), ActionPlayAnimation(121, 1.0, 0.0));
	}
	if ((nParam1 == 2)) {
		SetLockOrientationInDialog(GetObjectByTag("Kreia", 0), 1);
	}
	if ((nParam1 == 3)) {
		object oZez = GetObjectByTag("Zez", 0);
		AssignCommand(GetObjectByTag("Kreia", 0), ActionPlayAnimation(121, 1.0, 0.0));
		effect efBeam = EffectBeam(2038, GetFirstPC(), 1, 0);
		effect efVisual = EffectVisualEffect(1021, 0);
		DelayCommand(0.5, ApplyEffectToObject(1, efBeam, GetObjectByTag("Kreia", 0), 2.0));
		DelayCommand(0.5, ApplyEffectToObject(1, efVisual, GetFirstPC(), 2.0));
		DelayCommand(0.5, AssignCommand(oZez, ActionPlayAnimation(21, 1.0, 2.0)));
		DelayCommand(2.5, AssignCommand(oZez, ClearAllActions()));
		DelayCommand(2.5, AssignCommand(oZez, ActionPlayAnimation(26, 1.0, (-1.0))));
	}
	if ((nParam1 == 4)) {
		object oKreia = GetObjectByTag("Kreia", 0);
		AssignCommand(oKreia, ClearAllActions());
		DelayCommand(1.0, AssignCommand(oKreia, ActionForceMoveToObject(GetObjectByTag("WP_KREIA_2", 0), 0, 1.0, 30.0)));
	}
}

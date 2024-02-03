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
	if ((nParam1 == 5)) {
		object object12 = GetObjectByTag("Kreia", 0);
		object oHanharr = GetObjectByTag("Hanharr", 0);
		ChangeToStandardFaction(oHanharr, 16);
		ChangeToStandardFaction(object12, 17);
		DelayCommand(0.2, AssignCommand(oHanharr, ActionAttack(object12, 0)));
		DelayCommand(1.0, ChangeToStandardFaction(oHanharr, 2));
		DelayCommand(1.0, ChangeToStandardFaction(object12, 2));
		DelayCommand(2.2, AssignCommand(object12, ActionPlayAnimation(10063, 1.0, 3.5)));
		DelayCommand(2.3, AssignCommand(oHanharr, ClearAllActions()));
		DelayCommand(2.5, ApplyEffectToObject(1, EffectChoke(), oHanharr, 2.3));
		DelayCommand(4.9, AssignCommand(oHanharr, ClearAllActions()));
	}
	if ((nParam1 == 6)) {
		object object16 = GetObjectByTag("Kreia", 0);
		object object18 = GetObjectByTag("Hanharr", 0);
		DelayCommand(0.2, AssignCommand(object18, ActionPlayAnimation(10098, 1.0, 3.5)));
		DelayCommand(2.2, AssignCommand(object16, ActionPlayAnimation(10063, 1.0, 3.5)));
		DelayCommand(2.3, AssignCommand(object18, ClearAllActions()));
		DelayCommand(2.5, ApplyEffectToObject(1, EffectChoke(), object18, 2.3));
		SetFakeCombatState(object18, 0);
		SetFakeCombatState(object16, 0);
		DelayCommand(4.9, AssignCommand(object18, ClearAllActions()));
	}
}


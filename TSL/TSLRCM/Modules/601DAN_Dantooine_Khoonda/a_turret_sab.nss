void main() {
	string string1;
	string string2;
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		string1 = "khoonda_turret1";
		string2 = "WP_turret1";
	}
	else {
		if ((nParam1 == 2)) {
			string1 = "khoonda_turret3";
			string2 = "WP_turret2";
		}
		else {
			if ((nParam1 == 3)) {
				string1 = "khoonda_turret2";
				string2 = "WP_turret3";
			}
		}
	}
	object object1 = GetObjectByTag(string1, 0);
	AssignCommand(object1, ClearAllActions());
	effect efDamage = EffectDamage(1000, 8, 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	DelayCommand(2.0, ApplyEffectToObject(0, efDamage, object1, 0.0));
	DelayCommand(2.0, ApplyEffectToObject(0, efVisual, object1, 0.0));
	ChangeToStandardFaction(object1, 11);
}
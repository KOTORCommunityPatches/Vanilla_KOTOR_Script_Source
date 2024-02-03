void main() {
	int int1 = 0;
	string string1 = "hk50_1";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 5);
		{
			effect efVisual = EffectVisualEffect(3011, 0);
			effect effect3 = EffectVisualEffect(1021, 0);
			effect efBeam = EffectBeam(2038, object1, 1, 0);
			effect efDamage;
			int int2 = 1000;
			efDamage = EffectDamage(int2, 128, 0);
			DelayCommand(0.5, ApplyEffectToObject(0, efDamage, object1, 0.0));
			DelayCommand(0.5, ApplyEffectToObject(1, efBeam, object1, 1.0));
			DelayCommand(0.5, ApplyEffectToObject(0, effect3, object1, 1.0));
			DelayCommand(1.5, AssignCommand(object1, ActionPlayAnimation(26, 1.0, (-1.0))));
			(int1++);
			object1 = GetObjectByTag(string1, int1);
		}
	}
	AurPostString((("a_neuter_droid: " + IntToString(int1)) + " droids have been shut down."), 5, 5, 5.0);
}


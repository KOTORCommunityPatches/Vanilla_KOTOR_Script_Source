void main() {
	effect efDamage = EffectDamage(1000, 2048, 6);
	object oG_drd_inact = GetObjectByTag("g_drd_inact", 0);
	object object3 = GetObjectByTag("g_drd_inact", 1);
	object object5 = GetObjectByTag("g_drd_inact", 2);
	object object7 = GetObjectByTag("g_drd_inact", 3);
	object object9 = GetObjectByTag("g_drd_inact", 4);
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, oG_drd_inact, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, object3, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, object5, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, object7, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, object9, 0.0));
}


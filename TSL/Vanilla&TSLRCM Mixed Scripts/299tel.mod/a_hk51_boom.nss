void main() {
	effect efDamage = EffectDamage(1000, 2048, 6);
	effect efVisual = EffectVisualEffect(3003, 0);
	object oHK51_1 = GetObjectByTag("HK51_1", 0);
	object object3 = GetObjectByTag("HK51_1", 1);
	object object5 = GetObjectByTag("HK51_1", 2);
	object object7 = GetObjectByTag("HK51_1", 3);
	object object9 = GetObjectByTag("HK51_1", 4);
	DelayCommand(0.5, ApplyEffectToObject(0, efVisual, oHK51_1, 0.0));
	DelayCommand(0.5, ApplyEffectToObject(0, efVisual, object3, 0.0));
	DelayCommand(0.5, ApplyEffectToObject(0, efVisual, object5, 0.0));
	DelayCommand(0.5, ApplyEffectToObject(0, efVisual, object7, 0.0));
	DelayCommand(0.5, ApplyEffectToObject(0, efVisual, object9, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, oHK51_1, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, object3, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, object5, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, object7, 0.0));
	DelayCommand(1.0, ApplyEffectToObject(0, efDamage, object9, 0.0));
}


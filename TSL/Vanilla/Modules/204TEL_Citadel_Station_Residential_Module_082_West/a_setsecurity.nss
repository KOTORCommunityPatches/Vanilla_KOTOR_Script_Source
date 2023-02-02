void main() {
	int nParam1 = GetScriptParameter(1);
	object oSmug_plant = GetObjectByTag("smug_plant", 0);
	if (GetIsObjectValid(oSmug_plant)) {
		if ((nParam1 == 0)) {
			SetLocalBoolean(oSmug_plant, 36, 0);
			effect efVisual = EffectVisualEffect(2008, 0);
			ApplyEffectToObject(2, efVisual, oSmug_plant, 0.0);
		}
		else {
			if ((nParam1 == 1)) {
				SetLocalBoolean(oSmug_plant, 36, 1);
				DelayCommand(0.5, AssignCommand(oSmug_plant, ClearAllEffects()));
			}
		}
	}
}

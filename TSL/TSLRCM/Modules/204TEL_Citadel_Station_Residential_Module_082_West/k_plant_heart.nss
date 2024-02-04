void main() {
	object oSmug_plant = GetObjectByTag("smug_plant", 0);
	if (GetIsObjectValid(oSmug_plant)) {
		if ((!GetLocalBoolean(oSmug_plant, 36))) {
			effect efVisual = EffectVisualEffect(2008, 0);
			ApplyEffectToObject(2, efVisual, oSmug_plant, 0.0);
		}
		else {
			AssignCommand(oSmug_plant, ClearAllEffects());
		}
	}
}
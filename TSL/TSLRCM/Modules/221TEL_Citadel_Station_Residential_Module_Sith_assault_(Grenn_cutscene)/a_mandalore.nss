void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
	}
	if ((nParam1 == 2)) {
		object oMand = GetObjectByTag("Mand", 0);
		ApplyEffectToObject(50, EffectMovementSpeedDecrease(25), oMand, 0.0);
		AssignCommand(oMand, ActionMoveToObject(GetObjectByTag("wp_mandalore_01", 0), 0, 1.0));
		object oBeltItem = GetItemInSlot(10, oMand);
		AurPostString(("Going to Use Item: " + GetTag(oBeltItem)), 5, 18, 10.0);
		effect efVisual = EffectVisualEffect(8001, 0);
		DelayCommand(0.5, ApplyEffectToObject(1, efVisual, oMand, 5.0));
		effect effect4 = EffectVisualEffect(8000, 0);
		DelayCommand(1.0, ApplyEffectToObject(1, effect4, oMand, 5.0));
		DelayCommand(4.0, DestroyObject(oMand, 0.0, 1, 0.0, 0));
	}
}
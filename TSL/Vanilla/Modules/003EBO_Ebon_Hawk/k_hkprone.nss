void main() {
	AssignCommand(OBJECT_SELF, ActionPlayAnimation(20, 1.0, (-1.0)));
	if ((GetLocalBoolean(OBJECT_SELF, 21) == 1)) {
		return;
	}
	if ((GetGlobalNumber("000_HK_Chassis") == 0)) {
		SetLocalBoolean(OBJECT_SELF, 21, 1);
		effect efVisual = EffectVisualEffect(2067, 0);
		ActionDoCommand(ApplyEffectToObject(2, efVisual, OBJECT_SELF, 0.0));
	}
}

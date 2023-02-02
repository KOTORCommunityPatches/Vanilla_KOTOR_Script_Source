void main() {
	ChangeToStandardFaction(OBJECT_SELF, 2);
	AssignCommand(OBJECT_SELF, ClearAllEffects());
	effect efSpeedInc = EffectMovementSpeedIncrease(200);
	ApplyEffectToObject(2, efSpeedInc, OBJECT_SELF, 0.0);
}

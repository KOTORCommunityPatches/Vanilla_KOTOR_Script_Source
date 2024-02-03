void main() {
	object oTwilekAtton01 = GetObjectByTag("TwilekAtton01", 0);
	object oTwilekAtton02 = GetObjectByTag("TwilekAtton02", 0);
	effect effect1 = EffectMovementSpeedDecrease(20);
	ApplyEffectToObject(1, effect1, oTwilekAtton01, 10.0);
	ApplyEffectToObject(1, effect1, oTwilekAtton02, 10.0);
	AssignCommand(oTwilekAtton01, ClearAllActions());
	AssignCommand(oTwilekAtton02, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oTwilekAtton01, ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_attontwilek1c", 0)), 0, 30.0)));
	DelayCommand(0.1, AssignCommand(oTwilekAtton02, ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_attontwilek2c", 0)), 0, 30.0)));
}


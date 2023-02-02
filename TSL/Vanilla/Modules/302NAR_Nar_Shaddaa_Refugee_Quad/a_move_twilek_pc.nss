void main() {
	object oTwilekAtton01 = GetObjectByTag("TwilekAtton01", 0);
	effect effect1 = EffectMovementSpeedDecrease(20);
	ApplyEffectToObject(1, effect1, GetFirstPC(), 5.0);
	AssignCommand(GetFirstPC(), ClearAllActions());
	DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionForceMoveToObject(oTwilekAtton01, 0, 1.0, 30.0)));
}

void main() {
	object oAtton = GetObjectByTag("atton", 0);
	effect efSpeedInc = EffectMovementSpeedIncrease(50);
	DelayCommand(2.0, ApplyEffectToObject(1, efSpeedInc, oAtton, 14.0));
}
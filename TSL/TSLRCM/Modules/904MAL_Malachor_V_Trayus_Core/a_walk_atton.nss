void main() {
	object oAtton = GetObjectByTag("atton", 0);
	effect effect1 = EffectMovementSpeedDecrease(25);
	AssignCommand(GetObjectByTag("atton", 0), SetFacingPoint(GetPositionFromLocation(GetLocation(GetFirstPC()))));
	ApplyEffectToObject(1, effect1, oAtton, 14.0);
	DelayCommand(1.0, AssignCommand(oAtton, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_ATTON_WALKTO_1", 0)), 0, 30.0)));
}
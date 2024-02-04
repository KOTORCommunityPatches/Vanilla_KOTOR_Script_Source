void main() {
	object oN_twilekf004 = CreateObject(1, "n_twilekf004", GetLocation(GetObjectByTag("SP_TWINSUN1_OUT", 0)), 0);
	object oN_twilekf005 = CreateObject(1, "n_twilekf005", GetLocation(GetObjectByTag("SP_TWINSUN2_OUT", 0)), 0);
	object oWP_TWIN1_0 = GetObjectByTag("WP_TWIN1_0", 0);
	object oWP_TWIN2_0 = GetObjectByTag("WP_TWIN2_0", 0);
	AssignCommand(oN_twilekf004, ClearAllActions());
	AssignCommand(oN_twilekf005, ClearAllActions());
	DelayCommand(2.7, AssignCommand(oN_twilekf004, ActionForceMoveToObject(oWP_TWIN1_0, 0, 1.0, 30.0)));
	DelayCommand(2.7, AssignCommand(oN_twilekf005, ActionForceMoveToObject(oWP_TWIN2_0, 0, 1.0, 30.0)));
	effect effect1 = EffectMovementSpeedDecrease(25);
	effect effect3 = EffectMovementSpeedDecrease(40);
	ApplyEffectToObject(1, effect1, oN_twilekf004, 12.0);
	ApplyEffectToObject(1, effect3, oN_twilekf005, 12.0);
	AssignCommand(GetFirstPC(), ActionForceMoveToObject(GetObjectByTag("WP_PC_TWIN_0", 0), 0, 1.0, 30.0));
}
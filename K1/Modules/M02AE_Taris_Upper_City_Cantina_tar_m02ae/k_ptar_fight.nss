void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	int nHP = GetMaxHitPoints(oDuncan) - 2;
	object oBlaster = GetNearestObjectByTag("g_w_blstrpstl001", oDuncan, 1);
	
	ActionPauseConversation();
	
	AssignCommand(oDuncan, ClearAllActions());
	AssignCommand(oDuncan, PlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.0, 1.0));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectAssuredHit(), oGerlon, 20.0);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nHP), oDuncan);
	
	DelayCommand(0.1, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectDamageIncrease(nHP), oGerlon, 20.0));
	DelayCommand(0.90000004, AssignCommand(oGerlon, ActionAttack(oDuncan)));
	
	DelayCommand(0.85, DestroyObject(oBlaster));
	
	DelayCommand(1.05, AssignCommand(oDuncan, ClearAllActions()));
	DelayCommand(1.1, AssignCommand(oDuncan, ActionEquipMostDamagingRanged()));
	
	DelayCommand(1.74, SetDialogPlaceableCamera(23));
	DelayCommand(2.1499999, SetDialogPlaceableCamera(24));
	
	DelayCommand(3.4, ActionResumeConversation());
}

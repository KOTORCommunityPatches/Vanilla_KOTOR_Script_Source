void main() {
	object oAtton = GetObjectByTag("Atton", 0);
	object oWP_ATTONCAGE = GetWaypointByTag("WP_ATTONCAGE");
	location location1 = GetLocation(oWP_ATTONCAGE);
	ClearAllActions();
	ActionPauseConversation();
	object oPC = GetFirstPC();
	effect effect1 = EffectMovementSpeedDecrease(50);
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(0.1, ApplyEffectToObject(1, effect1, oPC, 6.0));
	DelayCommand(0.8, AssignCommand(oPC, ActionMoveToLocation(location1, 0)));
	DelayCommand(3.0, ActionResumeConversation());
}
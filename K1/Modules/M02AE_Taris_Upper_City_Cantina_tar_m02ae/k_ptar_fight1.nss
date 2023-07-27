void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	location lFight1 = GetLocation(GetObjectByTag("BP_FIGHT1_WP", 0));
	location lFight2 = GetLocation(GetObjectByTag("BP_FIGHT2_WP", 0));
	
	ActionPauseConversation();
	
	AssignCommand(oGerlon, ActionAttack(oDuncan));
	AssignCommand(oDuncan, ActionMoveToLocation(lFight1, TRUE));
	
	DelayCommand(2.0, ActionResumeConversation());
}

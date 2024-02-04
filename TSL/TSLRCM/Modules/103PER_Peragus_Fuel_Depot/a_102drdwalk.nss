void main() {
	object oMk2Droid1 = GetObjectByTag("Mk2Droid1", 0);
	object oMk2Droid2 = GetObjectByTag("Mk2Droid2", 0);
	object oWP_Mk2Droid1 = GetWaypointByTag("WP_Mk2Droid1");
	object oWP_Mk2Droid2 = GetWaypointByTag("WP_Mk2Droid2");
	location location1 = GetLocation(oWP_Mk2Droid1);
	location location3 = GetLocation(oWP_Mk2Droid2);
	ClearAllActions();
	ActionPauseConversation();
	AssignCommand(oMk2Droid1, ActionMoveToLocation(location1, 0));
	AssignCommand(oMk2Droid2, ActionMoveToLocation(location3, 0));
	DelayCommand(4.0, ActionResumeConversation());
}
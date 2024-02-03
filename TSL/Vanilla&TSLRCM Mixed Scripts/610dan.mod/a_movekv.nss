void main() {
	object oKaevee = GetObjectByTag("Kaevee", 0);
	object oPC = GetFirstPC();
	object oWP_kaev_1 = GetWaypointByTag("WP_kaev_1");
	object oWP_kaevpc_1 = GetWaypointByTag("WP_kaevpc_1");
	location location1 = GetLocation(oWP_kaev_1);
	location location3 = GetLocation(oWP_kaevpc_1);
	ClearAllActions();
	ActionPauseConversation();
	AssignCommand(oPC, ActionForceMoveToLocation(location3, 0, 30.0));
	AssignCommand(oKaevee, ActionForceMoveToLocation(location1, 1, 30.0));
	DelayCommand(2.5, ActionResumeConversation());
}


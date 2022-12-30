void main() {
	
	object oWP = GetWaypointByTag("kas25_wp_wraid2");
	object oVine = GetWaypointByTag("kas25_vinespawn");
	object oBeast = GetObjectByTag("kas25_wraid", 0);
	object oSelf = OBJECT_SELF;
	
	AssignCommand(oBeast, ActionMoveToObject(oWP, FALSE, 1.0));
	AssignCommand(oBeast, ActionDoCommand(SetFacingPoint(GetPosition(oVine))));
	ActionPauseConversation();
	DelayCommand(5.5, ActionResumeConversation());
}

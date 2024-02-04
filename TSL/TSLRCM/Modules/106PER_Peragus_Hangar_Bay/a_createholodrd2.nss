void main() {
	object oWP_DROIDHOLO_3_2 = GetObjectByTag("WP_DROIDHOLO_3_2", 0);
	object oHOLO3 = GetObjectByTag("HOLO3", 0);
	location location1 = GetLocation(oWP_DROIDHOLO_3_2);
	ActionPauseConversation();
	AssignCommand(oHOLO3, ActionMoveToObject(oWP_DROIDHOLO_3_2, 1, 1.0));
	DelayCommand(5.0, ActionResumeConversation());
}
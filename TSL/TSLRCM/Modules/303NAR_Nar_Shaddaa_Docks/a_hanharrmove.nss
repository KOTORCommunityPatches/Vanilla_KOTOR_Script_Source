void main() {
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oWP_HANHARR_1 = GetObjectByTag("WP_HANHARR_1", 0);
	AssignCommand(oHanharr, ClearAllActions());
	ActionPauseConversation();
	AssignCommand(oHanharr, ActionMoveToObject(oWP_HANHARR_1, 0, 1.0));
	DelayCommand(3.0, ActionResumeConversation());
}
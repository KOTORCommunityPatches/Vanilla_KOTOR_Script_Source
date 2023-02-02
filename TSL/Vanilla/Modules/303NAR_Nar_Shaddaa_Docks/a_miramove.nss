void main() {
	object oMira = GetObjectByTag("Mira", 0);
	object oWP_MIRA_1 = GetObjectByTag("WP_MIRA_1", 0);
	AssignCommand(oMira, ClearAllActions());
	ActionPauseConversation();
	AssignCommand(oMira, ActionMoveToObject(oWP_MIRA_1, 0, 1.0));
	DelayCommand(3.0, ActionResumeConversation());
}

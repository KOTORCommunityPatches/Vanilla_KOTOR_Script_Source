void main() {
	ActionPauseConversation();
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("WP_PC_VENT_0", 0), 0));
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(3.0, ActionResumeConversation());
}
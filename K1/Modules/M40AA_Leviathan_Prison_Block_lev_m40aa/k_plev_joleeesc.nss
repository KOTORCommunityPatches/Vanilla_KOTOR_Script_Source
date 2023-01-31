void main() {
	
	ActionPauseConversation();
	
	AssignCommand(GetFirstPC(), ClearAllActions());
	
	DelayCommand(0.8, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("lev40_wpjoleeout", 0))));
	
	ActionWait(4.0);
	ActionResumeConversation();
}
void main() {
	
	DelayCommand(0.5, AssignCommand(GetObjectByTag("tar04_sithtrooper0", 0), ActionMoveToObject(GetFirstPC(), FALSE, 3.0)));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("tar04_sithtrooper0", 1), ActionMoveToObject(GetFirstPC(), FALSE, 3.0)));
	
	ActionPauseConversation();
	
	ActionMoveToObject(GetFirstPC());
	
	ActionResumeConversation();
}

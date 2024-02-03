void main() {
	ActionPauseConversation();
	AssignCommand(GetFirstPC(), ActionPlayAnimation(4, 1.0, (-1.0)));
	DelayCommand(3.0, AssignCommand(GetFirstPC(), ClearAllActions()));
	DelayCommand(3.0, ActionResumeConversation());
}


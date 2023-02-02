void main() {
	ActionPauseConversation();
	PlayMovie("permov04", 0);
	ActionResumeConversation();
	DelayCommand(0.5, SignalEvent(GetArea(GetFirstPC()), EventUserDefined(1)));
}

void main() {
	
	ActionPauseConversation();
	
	ActionMoveToObject(GetObjectByTag("carthflee", 0), TRUE);
	ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker())));
	
	ActionResumeConversation();
}

void main() {
	
	ActionPauseConversation();
	
	ActionInteractObject(GetObjectByTag("unk43_ranclever", 0));
	SetLockOrientationInDialog(GetObjectByTag("unk43_theone", 0), 1);
	
	ActionResumeConversation();
}
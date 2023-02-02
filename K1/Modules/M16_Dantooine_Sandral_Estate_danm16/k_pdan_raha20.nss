void main() {
	
	SetGlobalBoolean("DAN_RAHA_AGREE", TRUE);
	
	ActionPauseConversation();
	
	ActionJumpToObject(GetObjectByTag("dan16_raha01", 0));
	ActionForceMoveToObject(GetObjectByTag("dan16_raha02", 0), TRUE, 1.0, 6.0);
	
	ActionResumeConversation();
	
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}

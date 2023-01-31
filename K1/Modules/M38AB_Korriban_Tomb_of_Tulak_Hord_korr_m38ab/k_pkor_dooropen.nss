void main() {
	
	object oDoor = GetObjectByTag("kor38b_door4", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	
	ActionWait(2.0);
	ActionResumeConversation();
}
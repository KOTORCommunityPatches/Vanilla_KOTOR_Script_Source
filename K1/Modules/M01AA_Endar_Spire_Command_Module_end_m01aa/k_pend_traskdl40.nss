void main() {
	
	object oDoor = GetObjectByTag("end_door01", 0);
	
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("", 0), TRUE, 1.0);
	ActionResumeConversation();
}

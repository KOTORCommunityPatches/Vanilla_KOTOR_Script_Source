void main() {
	
	object oDoor = GetObjectByTag("lev40_blastdoord", 0);
	
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	
	oDoor = GetObjectByTag("lev40_blastdoore", 0);
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	
	ActionPauseConversation();
	ActionWait(1.2);
	ActionResumeConversation();
}
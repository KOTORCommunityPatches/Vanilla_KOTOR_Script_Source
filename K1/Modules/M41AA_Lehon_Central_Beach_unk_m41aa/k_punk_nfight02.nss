void main() {
	
	ActionPauseConversation();
	
	AssignCommand(GetObjectByTag("unk41_blk4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("rancorwp", 0)), FALSE));
	
	ActionWait(5.5);
	ActionResumeConversation();
}
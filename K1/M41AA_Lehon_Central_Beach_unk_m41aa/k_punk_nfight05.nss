void main() {
	
	ActionPauseConversation();
	
	AssignCommand(GetObjectByTag("unk41_blk1", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("missionend", 0)), TRUE));
	AssignCommand(GetObjectByTag("unk41_blk4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("missionend", 0)), TRUE));
	AssignCommand(GetObjectByTag("unk41_blk3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("missionend", 0)), TRUE));
	AssignCommand(GetObjectByTag("unk41_blk2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("missionend", 0)), TRUE));
	AssignCommand(GetObjectByTag("unk41_blk5", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("missionend", 0)), TRUE));
	
	ActionWait(1.5);
	ActionResumeConversation();
}

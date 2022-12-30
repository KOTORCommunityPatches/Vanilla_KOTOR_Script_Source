void main() {
	
	ActionPauseConversation();
	
	AssignCommand(GetObjectByTag("unk41_blk4", 0), ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT, 1.0, 1.0));
	
	ActionWait(0.8);
	ActionResumeConversation();
}

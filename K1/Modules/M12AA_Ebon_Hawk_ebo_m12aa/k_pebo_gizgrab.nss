void main() {
	
	object oSelf = OBJECT_SELF;
	
	AssignCommand(GetPCSpeaker(), ActionPlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.0, 1.0));
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}
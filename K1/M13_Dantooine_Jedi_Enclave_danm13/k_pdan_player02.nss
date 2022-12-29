void main() {
	
	ActionPlayAnimation(ANIMATION_LOOPING_USE_COMPUTER, 1.0, 5.0);
	
	ActionDoCommand(AssignCommand(GetObjectByTag("dan13_zhar", 0), ActionResumeConversation()));
}

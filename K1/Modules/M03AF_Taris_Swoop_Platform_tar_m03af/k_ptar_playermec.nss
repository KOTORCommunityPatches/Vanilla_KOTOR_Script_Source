
void VictoryLane() {
	
	ActionMoveToObject(GetObjectByTag("tar03_wpraceover", 0), TRUE);
	
	if (GetGlobalNumber("Tar_SwoopStatus") == 2)
		{
			ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY1);
		}
}

void main() {
	
	AssignCommand(GetFirstPC(), VictoryLane());
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}
void main() {
	
	object oRakghoul = GetObjectByTag("hendarsfate", 0);
	
	AssignCommand(oRakghoul, ActionMoveToObject(GetObjectByTag("wp_hendarfate99", 0), TRUE));
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

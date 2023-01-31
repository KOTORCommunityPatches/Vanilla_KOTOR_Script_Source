void main() {
	
	object oExit = GetWaypointByTag("kas22_eliexit");
	
	SetGlobalFadeOut(0.0, 3.0);
	ActionPauseConversation();
	ActionMoveToObject(oExit, TRUE);
	ActionResumeConversation();
}
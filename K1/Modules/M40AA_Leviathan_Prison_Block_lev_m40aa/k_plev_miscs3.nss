void main() {
	
	object oWP = GetObjectByTag("lev40_wppicklock", 0);
	object oDoor = GetNearestObjectByTag("lev40_cell08", GetObjectByTag("mission", 0), 1);
	object oMission = GetObjectByTag("mission", 0);
	
	AssignCommand(oMission, ActionMoveToObject(oWP, FALSE, 0.5));
	AssignCommand(oMission, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 2.0));
	
	DelayCommand(4.0, SignalEvent(oDoor, EventUserDefined(2000)));
	
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
}
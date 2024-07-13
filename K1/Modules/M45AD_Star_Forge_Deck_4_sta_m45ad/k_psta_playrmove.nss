void main() {
	
	object oPC = GetFirstPC();
	
	ActionPauseConversation();
	
	location lStart = GetLocation(GetObjectByTag("sta_pc_start", 0));
	
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, JumpToLocation(lStart));
	
	object oWP = GetObjectByTag("sta_way_player", 0);
	
	SetLockOrientationInDialog(OBJECT_SELF, TRUE);
	SetFacing(GetFacing(GetObjectByTag("sta_way_player", 0)));
	
	PlayAnimation(ANIMATION_LOOPING_PAUSE2, 1.0, -1.0);
	
	DelayCommand(0.5, AssignCommand(oPC, ActionMoveToObject(oWP, 0, 1.0)));
	
	ActionWait(3.4);
	ActionResumeConversation();
}

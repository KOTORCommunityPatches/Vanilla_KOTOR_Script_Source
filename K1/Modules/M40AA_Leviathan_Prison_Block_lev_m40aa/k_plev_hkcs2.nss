void main() {
	
	object oTechA = GetObjectByTag("lev40_hktech0", 0);
	object oTechB = GetObjectByTag("lev40_hktech1", 0);
	
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionPlayAnimation(ANIMATION_LOOPING_PAUSE, 1.0, 3.0));
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

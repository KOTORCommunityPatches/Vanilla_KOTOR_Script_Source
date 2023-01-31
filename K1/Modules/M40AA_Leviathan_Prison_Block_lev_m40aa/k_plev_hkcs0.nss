void main() {
	
	object oTechA = GetObjectByTag("lev40_hktech0", 0);
	object oTechB = GetObjectByTag("lev40_hktech1", 0);
	object oWeldingDroid = GetObjectByTag("WeldingDroid", 0);
	
	AssignCommand(oTechA, ActionPlayAnimation(ANIMATION_LOOPING_USE_COMPUTER, 1.0, 360.0));
	AssignCommand(oTechB, ActionPlayAnimation(ANIMATION_LOOPING_USE_COMPUTER, 1.0, 360.0));
	AssignCommand(GetFirstPC(), ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, 360.0));
	
	SoundObjectPlay(oWeldingDroid);
	
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}
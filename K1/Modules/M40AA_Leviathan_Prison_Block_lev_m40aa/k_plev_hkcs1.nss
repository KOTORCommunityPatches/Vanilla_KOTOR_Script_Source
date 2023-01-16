void AnimPlay() {
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("lev40_wptech0a", 0), 0, 1.0);
	ActionPlayAnimation(ANIMATION_LOOPING_USE_COMPUTER, 1.0, 360.0);
}

void main() {
	
	object oTechA = GetObjectByTag("lev40_hktech0", 0);
	object oTechB = GetObjectByTag("lev40_hktech1", 0);
	object oWeldingDroid = GetObjectByTag("WeldingDroid", 0);
	
	SoundObjectStop(oWeldingDroid);
	
	AssignCommand(oTechA, AnimPlay());
	
	ActionPauseConversation();
	ActionWait(4.0);
	ActionResumeConversation();
}

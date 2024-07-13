void main() {
	
	object oPC = GetFirstPC();
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oMalak, ActionMoveAwayFromObject(oPC, FALSE, 20.0));
	
	ActionWait(3.0);
	ActionResumeConversation();
}

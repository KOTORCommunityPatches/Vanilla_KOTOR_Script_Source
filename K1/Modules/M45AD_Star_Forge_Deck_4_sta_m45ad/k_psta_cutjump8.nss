void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oCaptive = GetNearestObjectByTag("sta_way_captive8", OBJECT_SELF, 1);
	
	ActionPauseConversation();
	
	AssignCommand(oMalak, ActionJumpToObject(oCaptive));
	
	ActionWait(1.0);
	ActionResumeConversation();
}

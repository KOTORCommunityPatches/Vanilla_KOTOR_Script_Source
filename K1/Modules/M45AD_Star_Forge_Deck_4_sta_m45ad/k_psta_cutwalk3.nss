void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oCaptive = GetNearestObjectByTag("sta_plc_captive3", OBJECT_SELF, 1);
	
	ActionPauseConversation();
	
	AssignCommand(oMalak, ActionMoveToObject(oCaptive));
	
	ActionWait(3.0);
	ActionResumeConversation();
}

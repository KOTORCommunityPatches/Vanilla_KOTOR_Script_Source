void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestSta_plc_captive2 = GetNearestObjectByTag("sta_plc_captive2", OBJECT_SELF, 1);
	ActionPauseConversation();
	AssignCommand(oSta_45darthMalak, ActionMoveToObject(oNearestSta_plc_captive2, 0, 1.0));
	ActionWait(3.0);
	ActionResumeConversation();
}

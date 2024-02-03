void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("wp_hkpc", 0), 0, 1.0, 30.0));
	ActionResumeConversation();
}


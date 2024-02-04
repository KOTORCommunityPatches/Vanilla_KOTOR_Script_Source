void main() {
	object oRECapt = GetObjectByTag("RECapt", 0);
	object oPC = GetFirstPC();
	ActionPauseConversation();
	AssignCommand(oPC, ActionForceMoveToObject(oRECapt, 0, 1.0, 30.0));
	DelayCommand(5.0, ActionResumeConversation());
}
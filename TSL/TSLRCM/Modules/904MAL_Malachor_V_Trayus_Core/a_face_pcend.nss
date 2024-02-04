void main() {
	ActionPauseConversation();
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(1.0, AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("atton", 0)))));
	DelayCommand(1.8, AssignCommand(oPC, ActionPlayAnimation(10034, 1.0, (-1.0))));
	DelayCommand(3.0, ActionResumeConversation());
}
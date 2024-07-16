void main() {
	
	ActionPauseConversation();
	
	object oPC = GetFirstPC();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	
	RemoveFromParty(oPC);
	
	object oWP = GetObjectByTag("sta_way_exit", 0);
	
	AssignCommand(oPM1, ActionMoveToObject(oWP));
	AssignCommand(oPM2, ActionMoveToObject(oWP));
	DelayCommand(3.0, DestroyObject(oPM1));
	DelayCommand(3.0, DestroyObject(oPM2));
	
	ActionWait(3.0);
	ActionResumeConversation();
}

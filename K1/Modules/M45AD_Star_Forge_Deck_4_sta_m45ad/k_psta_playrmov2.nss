void main() {
	
	object oPC = GetFirstPC();
	
	ActionPauseConversation();
	
	location lStart = GetLocation(GetObjectByTag("sta_pc_start", 0));
	object oWP = GetObjectByTag("sta_way_player", 0);
	
	ActionWait(2.5);
	ActionResumeConversation();
}

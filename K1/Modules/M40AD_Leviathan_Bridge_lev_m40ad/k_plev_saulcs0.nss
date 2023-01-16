void main() {
	
	SetPartyLeader(NPC_PLAYER);
	
	ActionPauseConversation();
	ActionWait(3.0);
	
	location lPC = GetLocation(GetObjectByTag("lev_jump_wp_pc", 0));
	location lCarth = GetLocation(GetObjectByTag("lev_jump_wp_carth", 0));
	location lBast = GetLocation(GetObjectByTag("lev_jump_wp_bastila", 0));
	
	RemovePartyMember(2);
	RemovePartyMember(0);
	
	AssignCommand(GetFirstPC(), JumpToLocation(lPC));
	AssignCommand(GetObjectByTag("Carth", 0), JumpToLocation(lCarth));
	AssignCommand(GetObjectByTag("Bastila", 0), JumpToLocation(lBast));
	
	ActionResumeConversation();
}

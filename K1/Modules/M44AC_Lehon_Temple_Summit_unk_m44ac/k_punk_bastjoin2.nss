void main() {
	
	ActionPauseConversation();
	
	AddPartyMember(NPC_BASTILA, GetObjectByTag("bastila", 0));
	
	ActionResumeConversation();
}
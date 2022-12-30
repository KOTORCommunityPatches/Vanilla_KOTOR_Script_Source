void main() {
	
	ActionPauseConversation();
	
	SetGlobalFadeIn(0.0, 0.5);
	
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playerwp", 0)), FALSE));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("pm1wp", 0)), FALSE));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("pm2wp", 0)), FALSE));
	
	ActionWait(2.0);
	ActionResumeConversation();
}

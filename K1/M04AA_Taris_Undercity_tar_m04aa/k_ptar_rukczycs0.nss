void main() {
	
	object oRukil = GetObjectByTag("rukil04", 0);
	object oRukil_WP = GetObjectByTag("tar04_wprukilbadstart", 0);
	
	AssignCommand(oRukil, ActionMoveToObject(GetPCSpeaker(), TRUE));
	
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}

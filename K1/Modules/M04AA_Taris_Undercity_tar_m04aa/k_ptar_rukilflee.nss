void main() {
	
	object oRukil = GetObjectByTag("rukil04", 0);
	object oRukil_WP = GetObjectByTag("tar04_wprukilbadend", 0);
	
	SetGlobalFadeOut(4.0, 2.0);
	
	AssignCommand(oRukil, ActionMoveToObject(oRukil_WP, TRUE));
	
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}

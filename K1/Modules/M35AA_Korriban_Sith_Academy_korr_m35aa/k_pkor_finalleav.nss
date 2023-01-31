void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	object oUthar_WP = GetObjectByTag("k35_way_uthleave", 0);
	object oPC_WP = GetObjectByTag("k35_way_pcleave", 0);
	
	SetGlobalFadeOut(3.0, 3.0);
	
	ActionPauseConversation();
	
	AssignCommand(oPC, ActionMoveToObject(oPC_WP, TRUE));
	ActionMoveToObject(oUthar_WP, TRUE);
	
	ActionResumeConversation();
}
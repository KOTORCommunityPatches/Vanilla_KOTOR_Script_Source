void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	object oAnnouncer = GetObjectByTag("DuelAnnoun021", 0);
	
	ChangeToStandardFaction(oDuncan, STANDARD_FACTION_FRIENDLY_1);
	ChangeToStandardFaction(oGerlon, STANDARD_FACTION_FRIENDLY_2);
	
	ActionPauseConversation();
	
	AssignCommand(oDuncan, ClearAllActions());
	AssignCommand(oDuncan, ActionMoveToObject(GetObjectByTag("tar02_wprun1", 0)));
	
	DelayCommand(0.3, AssignCommand(oGerlon, ClearAllActions()));
	DelayCommand(0.4, AssignCommand(oGerlon, ActionMoveToObject(GetObjectByTag("tar02_wprun2", 0))));
	
	DelayCommand(5.7, ActionResumeConversation());
}

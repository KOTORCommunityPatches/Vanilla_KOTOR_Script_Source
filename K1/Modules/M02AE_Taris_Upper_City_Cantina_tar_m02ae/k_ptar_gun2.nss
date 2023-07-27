void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	
	ActionPauseConversation();
	
	DelayCommand(0.3, AssignCommand(oGerlon, ActionEquipMostDamagingRanged(OBJECT_INVALID)));
	DelayCommand(0.6, AssignCommand(oGerlon, PlaySound("it_pistol")));
	
	DelayCommand(1.4, ActionResumeConversation());
}

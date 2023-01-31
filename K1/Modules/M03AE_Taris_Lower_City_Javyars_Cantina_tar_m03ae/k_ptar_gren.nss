void main() {

	//string sGren = "flash_gren";
	//location lGren = GetLocation(GetObjectByTag("GRENADE_WP", 0));
	object oRodian = GetObjectByTag("taproomvic031", 0);
	object oTwilek1 = GetObjectByTag("taproomvic032", 0);
	object oTwilek2 = GetObjectByTag("taproomvic033", 0);
	
	AssignCommand(oRodian, ActionEquipMostDamagingRanged());
	DelayCommand(0.2, AssignCommand(oTwilek1, ActionEquipMostDamagingRanged()));
	DelayCommand(0.5, AssignCommand(oTwilek2, ActionEquipMostDamagingRanged()));
	
	ActionPauseConversation();
	DelayCommand(0.8, ActionResumeConversation());
	
	DelayCommand(0.90000004, PlaySound("cb_gr_boncehard1"));
}
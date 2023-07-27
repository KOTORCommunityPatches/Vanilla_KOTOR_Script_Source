void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	string sResRef = "g_w_blstrpstl001";
	location lSpawn = GetLocation(GetObjectByTag("BP_GUN_SPAWN", 0));
	
	ActionPauseConversation();
	
	CreateItemOnFloor(sResRef, lSpawn);
	
	DelayCommand(0.3, AssignCommand(oDuncan, ActionEquipMostDamagingRanged(OBJECT_INVALID)));
	DelayCommand(0.6, AssignCommand(oDuncan, PlaySound("it_pistol")));
	DelayCommand(0.85, AssignCommand(oDuncan, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF), TRUE)));
	
	DelayCommand(1.3, ActionResumeConversation());
}

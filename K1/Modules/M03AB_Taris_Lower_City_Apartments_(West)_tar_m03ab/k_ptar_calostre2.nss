void main() {
	
	object oCalo = GetObjectByTag("calo032", 0);
	object oRodianA = GetObjectByTag("rodian035", 0);
	object oRodianB = GetObjectByTag("rodian036", 0);
	
	ActionPauseConversation();
	
	talent talFeat = TalentFeat(FEAT_POWER_BLAST);
	object oBlaster = GetItemPossessedBy(oCalo, "G_W_HVYBLSTR01");
	
	AssignCommand(oCalo, ClearAllActions());
	DelayCommand(0.2, AssignCommand(oCalo, ActionEquipItem(oBlaster, INVENTORY_SLOT_LEFTWEAPON, FALSE)));
	
	DelayCommand(0.7, ActionResumeConversation());
}

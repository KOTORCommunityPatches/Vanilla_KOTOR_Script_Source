void main() {
	
	object oCalo = GetObjectByTag("calo032", 0);
	object oRodianA = GetObjectByTag("rodian035", 0);
	object oRodianB = GetObjectByTag("rodian036", 0);
	
	ActionPauseConversation();
	
	ChangeToStandardFaction(oRodianA, STANDARD_FACTION_FRIENDLY_2);
	ChangeToStandardFaction(oRodianB, STANDARD_FACTION_FRIENDLY_2);
	ChangeToStandardFaction(oCalo, STANDARD_FACTION_FRIENDLY_1);
	
	talent talFeat = TalentFeat(FEAT_POWER_BLAST);
	object oBlaster = GetItemPossessedBy(oCalo, "G_W_HVYBLSTR01");
	
	DelayCommand(0.2, AssignCommand(oCalo, ActionEquipItem(oBlaster, INVENTORY_SLOT_RIGHTWEAPON, FALSE)));
	
	DelayCommand(1.2, ActionResumeConversation());
}
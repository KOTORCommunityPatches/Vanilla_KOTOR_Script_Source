void main() {
	
	object oCalo = GetObjectByTag("calo032", 0);
	object oRodianA = GetObjectByTag("rodian035", 0);
	object oRodianB = GetObjectByTag("rodian036", 0);
	
	ActionPauseConversation();
	
	talent talFeat = TalentFeat(FEAT_POWER_BLAST);
	object oBlaster = GetItemPossessedBy(oCalo, "G_W_HVYBLSTR01");
	
	DelayCommand(0.6, AssignCommand(oCalo, ActionAttack(oRodianB)));
	DelayCommand(4.2, AssignCommand(oCalo, CancelCombat(oCalo)));
	
	DelayCommand(3.2, ActionResumeConversation());
}

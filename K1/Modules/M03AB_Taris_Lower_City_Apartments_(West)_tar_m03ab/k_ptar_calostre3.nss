void main() {
	
	object oCalo = GetObjectByTag("calo032", 0);
	object oRodianA = GetObjectByTag("rodian035", 0);
	object oRodianB = GetObjectByTag("rodian036", 0);
	
	ActionPauseConversation();
	
	talent talFeat = TalentFeat(FEAT_POWER_BLAST);
	object oBlaster = GetItemPossessedBy(oCalo, "G_W_HVYBLSTR01");
	
	AssignCommand(oCalo, ClearAllActions());
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectAssuredHit(), oCalo, 20.0);
	DelayCommand(0.4, AssignCommand(oCalo, ActionAttack(oRodianA)));
	
	AssignCommand(oRodianA, ActionEquipMostDamagingRanged(OBJECT_INVALID));
	DelayCommand(0.3, AssignCommand(oRodianB, ActionEquipMostDamagingRanged(OBJECT_INVALID)));
	
	DelayCommand(2.2, ActionResumeConversation());
}
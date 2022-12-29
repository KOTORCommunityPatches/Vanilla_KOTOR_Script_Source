void main() {
	
	object oInvis = GetObjectByTag("k_ptar_invis_speaker", 0);
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectParalyze(), GetFirstPC(), 1.0);
	
	DelayCommand(1.0, SetGlobalFadeIn(0.0, 2.0));
	
	DelayCommand(0.5, AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
}

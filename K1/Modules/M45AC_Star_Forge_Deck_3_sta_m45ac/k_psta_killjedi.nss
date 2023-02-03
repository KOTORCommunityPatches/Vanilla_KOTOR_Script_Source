// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

void main() {
	
	object oJedi1 = GetObjectByTag("sta_jedivic1", 0);
	object oJedi2 = GetObjectByTag("sta_jedivic2", 0);
	event eUser = EventUserDefined(345);
	
	ActionPauseConversation();
	
	ActionCastFakeSpellAtObject(FORCE_POWER_DEATH_FIELD, oJedi1, FALSE);
	ActionCastFakeSpellAtObject(FORCE_POWER_DEATH_FIELD, oJedi2, FALSE);
	
	effect efBeam = EffectBeam(VFX_BEAM_DEATH_FIELD_TENTACLE, OBJECT_SELF, BODY_NODE_HAND, FALSE);
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, efBeam, oJedi1, 2.0);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, efBeam, oJedi2, 2.0);
	
	DelayCommand(2.0, ApplyEffectToObject(0, EffectDeath(FALSE, TRUE), oJedi1, 0.0));
	DelayCommand(2.0, ApplyEffectToObject(0, EffectDeath(FALSE, TRUE), oJedi2, 0.0));
	
	ActionResumeConversation();
}

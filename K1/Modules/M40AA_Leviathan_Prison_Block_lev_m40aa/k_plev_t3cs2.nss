void main() {
	
	object oDroid = GetObjectByTag("lev40_shopdroid", 0);
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectBeam(VFX_BEAM_ION_RAY_01, oDroid, 2, 0), GetFirstPC(), 5.0);
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

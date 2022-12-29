void main() {
	
	object oPC = GetFirstPC();
	object oDroid = GetObjectByTag("kas18_ambush_drd", 0);
	
	ActionPauseConversation();
	DelayCommand(1.0, ActionResumeConversation());
	DestroyObject(oDroid, 1.5, TRUE, 0.0);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_GRENADE_FRAGMENTATION, FALSE), GetLocation(oDroid), 0.0);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(60, DAMAGE_TYPE_UNIVERSAL, DAMAGE_POWER_NORMAL), oPC, 0.0);
}

void main() {
	
	object oArea = GetArea(OBJECT_SELF);
	object oDroid1 = GetObjectByTag("kor37_bridge1", 0);
	object oSFX = GetObjectByTag("k37_snd_activate", 0);
	effect eVFX = EffectVisualEffect(VFX_DUR_SHIELD_BLUE_MARK_I);
	
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	
	ActionPauseConversation();
	
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_PERMANENT, eVFX, oDroid1));
	
	AssignCommand(oDroid1, ClearAllActions());
	AssignCommand(oDroid1, ActionPlayAnimation(ANIMATION_LOOPING_PAUSE3, 1.0, 6.0));
	
	ChangeToStandardFaction(oDroid1, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(1.0, SoundObjectPlay(oSFX));
	
	ActionWait(2.0);
	ActionResumeConversation();
}

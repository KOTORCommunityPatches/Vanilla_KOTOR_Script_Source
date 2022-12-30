void main() {
	
	ActionPauseConversation();
	
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), GetObjectByTag("mission", 0)));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("mission", 0), SetIsDestroyable(FALSE, FALSE, FALSE)));
	
	SetGlobalFadeIn(1.0, 1.0);
	
	DelayCommand(1.0, AssignCommand(GetObjectByTag("zaalbar", 0), ActionPlayAnimation(ANIMATION_LOOPING_MEDITATE)));
	
	ActionWait(4.0);
	ActionResumeConversation();
}

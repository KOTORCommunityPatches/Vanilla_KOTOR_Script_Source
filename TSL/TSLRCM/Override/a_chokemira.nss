void main() {
	ActionPauseConversation();
	AssignCommand(GetFirstPC(), ActionPlayAnimation(121, 1.0, 6.0));
	DelayCommand(0.5, ApplyEffectToObject(1, EffectChoke(), GetObjectByTag("Mira", 0), 5.5));
	DelayCommand(6.5, ActionResumeConversation());
}
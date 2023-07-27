void PlayCrowdSFX() {
	object oCrowd2 = GetObjectByTag("tar_duel_crowd2", 0);
	SoundObjectPlay(oCrowd2);
	DelayCommand(5.0, SoundObjectStop(oCrowd2));
}

void main() {
	
	PlayCrowdSFX();
	
	AssignCommand(GetFirstPC(), ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY1));
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

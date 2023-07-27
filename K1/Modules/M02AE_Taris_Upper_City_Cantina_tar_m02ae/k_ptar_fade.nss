void PlayCrowdSFX() {
	object oCrowd2 = GetObjectByTag("tar_duel_crowd2", 0);
	SoundObjectPlay(oCrowd2);
	DelayCommand(5.0, SoundObjectStop(oCrowd2));
}

void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oDuncan, ClearAllActions());
	AssignCommand(oDuncan, ActionEquipMostDamagingRanged());
	AssignCommand(oDuncan, ActionPlayAnimation(ANIMATION_LOOPING_PAUSE, 1.0, 0.1));
	AssignCommand(oDuncan, ActionJumpToLocation(GetGlobalLocation("TAR_DUELCUT_START1")));
	
	PlayCrowdSFX();
	
	SetGlobalFadeOut(4.0, 2.0);
	
	ActionWait(6.0);
	ActionResumeConversation();
}

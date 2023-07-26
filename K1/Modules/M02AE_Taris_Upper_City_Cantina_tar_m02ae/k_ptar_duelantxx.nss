void PlayCrowdSFX() {
	object oCrowd = GetObjectByTag("tar_duel_crowd", 0);
	
	MusicBackgroundStop(GetArea(GetFirstPC()));
	AmbientSoundStop(GetArea(GetFirstPC()));
	DelayCommand(0.5, SoundObjectPlay(oCrowd));
}

void main() {
	
	SetGlobalNumber("Tar_DuelAnTk", 1);
	
	SetGlobalFadeIn(1.0, 3.0);
	
	SetGlobalBoolean("TAR_DUELINPROGRESS", FALSE);
	
	PlayCrowdSFX();
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	
	SetLockOrientationInDialog(oGerlon, TRUE);
	SetLockOrientationInDialog(oDuncan, TRUE);
}

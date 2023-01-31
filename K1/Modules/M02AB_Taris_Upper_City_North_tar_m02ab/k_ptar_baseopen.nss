void PlayAnim() {
	ClearAllActions();
	ActionPlayAnimation(ANIMATION_LOOPING_WELD, 1.0, 3.0);
	ActionPlayAnimation(ANIMATION_LOOPING_PAUSE, 1.0, 1.0);
}

void main() {
	
	object oDoor = GetObjectByTag("tar02_sithdoor", 0);
	object oSFX = GetObjectByTag("weldingdroid", 0);
	
	SetCommandable(TRUE, GetFirstPC());
	AssignCommand(GetPartyMemberByIndex(0), PlayAnim());
	
	SoundObjectPlay(oSFX);
	DelayCommand(3.0, SoundObjectStop(oSFX));
	
	DelayCommand(3.0, AssignCommand(oDoor, ActionOpenDoor(oDoor)));
	
	ActionPauseConversation();
	ActionWait(4.0);
	ActionResumeConversation();
}
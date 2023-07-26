#include "k_inc_tar"

void PlayCrowdSFX() {
	object oCrowd = GetObjectByTag("tar_duel_crowd2", 0);
	SoundObjectPlay(oCrowd);
	DelayCommand(5.0, SoundObjectStop(oCrowd));
}

void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	
	UT_ActionPauseConversation(8.0);
	
	DelayCommand(5.3, PlayCrowdSFX());
	
	DelayCommand(5.4, AssignCommand(oDuncan, PlayAnimation(ANIMATION_FIREFORGET_VICTORY1)));
}

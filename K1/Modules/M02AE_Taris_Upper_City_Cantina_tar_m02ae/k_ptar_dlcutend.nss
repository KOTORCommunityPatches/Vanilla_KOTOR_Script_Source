#include "k_inc_tar"
#include "k_inc_generic"

void StopCrowdSFX() {
	object oCrowd = GetObjectByTag("tar_duel_crowd", 0);
	SoundObjectStop(oCrowd);
	DelayCommand(0.5, AmbientSoundPlay(GetArea(GetFirstPC())));
	DelayCommand(0.5, MusicBackgroundPlay(GetArea(GetFirstPC())));
}

void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	
	AssignCommand(oDuncan, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, FALSE));
	AssignCommand(oGerlon, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, FALSE));
	
	StopCrowdSFX();
	
	DestroyObject(GetNearestObjectByTag("g_w_blstrpstl001", oDuncan, TRUE));
	
	SetGlobalBoolean("TAR_DUELINPROGRESS", FALSE);
	
	SetGlobalFadeIn(1.0, 1.0);
	
	SetCommandable(TRUE, oDuncan);
	
	AssignCommand(oGerlon, ActionJumpToLocation(GetGlobalLocation("TAR_DUELCUT_START2")));
}

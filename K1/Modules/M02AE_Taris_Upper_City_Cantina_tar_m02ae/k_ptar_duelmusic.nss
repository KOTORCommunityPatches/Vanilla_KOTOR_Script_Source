#include "k_inc_tar"

void FaceOpponent() {
	object oWP_Arena2 = GetObjectByTag("tar02_wpopparena2", 0);
	Db_PostString("FACING OPPONENT", 5, 5, 5.0);
	ClearAllActions();
	ActionDoCommand(SetFacingPoint(GetPosition(oWP_Arena2)));
}

void PlayCrowdSFX() {
	object oCrowd = GetObjectByTag("tar_duel_crowd", 0);
	MusicBackgroundStop(GetArea(GetFirstPC()));
	AmbientSoundStop(GetArea(GetFirstPC()));
	DelayCommand(0.5, SoundObjectPlay(oCrowd));
}

void main() {
	
	PlayCrowdSFX();
	
	AssignCommand(GetFirstPC(), FaceOpponent());
}

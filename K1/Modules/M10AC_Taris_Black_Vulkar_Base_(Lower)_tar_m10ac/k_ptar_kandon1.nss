#include "k_inc_tar"

void main() {
	
	object object1;
	
	SetGlobalBoolean("Tar_KandonMission", TRUE);
	
	TAR_MarkForCleanup(GetObjectByTag("KandonArk101", 0));
	
	DelayCommand(0.1, StartNewModule("tar_m03aa", "tar03_sw03aag"));
}
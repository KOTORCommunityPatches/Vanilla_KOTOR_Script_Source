#include "k_inc_tar"

void StampyMove() {
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	TAR_PlotMoveObject(GetObjectByTag("tar05_wprancor", 0), 0);
}

void main() {
	
	object oStampy = GetObjectByTag("tar05_stampy", 0);
	
	SetGlobalBoolean("TAR_RANCOREATING", FALSE);
	DelayCommand(1.0, AssignCommand(oStampy, StampyMove()));
}

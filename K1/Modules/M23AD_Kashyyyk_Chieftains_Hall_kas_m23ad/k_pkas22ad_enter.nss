#include "k_inc_kas"

void SpawnFreyyr() {
	
	object oWP = GetWaypointByTag("kas23_freyyrspwn");
	location lWP = GetLocation(oWP);
	
	CreateObject(OBJECT_TYPE_CREATURE, "kas23_freyyr_01", lWP);
	return;
}

void main() {
	
	object oChuundar = GetObjectByTag("kas23_chuunda_01", 0);
	
	if (GetHelpedFreyyrGlobal() == TRUE && GetFreyyrSpawnGlobal() == FALSE)
		{
			DelayCommand(0.1, SpawnFreyyr());
			SetFreyyrSpawnGlobal(TRUE);
		}
	
	if (GetFadeOffLocal() == FALSE && UT_GetTalkedToBooleanFlag(oChuundar) == FALSE || GetHelpedFreyyrGlobal() == TRUE || GetFreyyrDeadGlobal() == TRUE)
	{
		SetGlobalFadeOut();
	}
}

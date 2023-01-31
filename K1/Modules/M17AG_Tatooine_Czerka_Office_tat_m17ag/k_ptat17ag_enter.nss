#include "k_inc_tat"

void SpawnGriff() {
	
	object oWP = GetWaypointByTag("tat17_griffspawn");
	location lSpawn = GetLocation(oWP);
	
	CreateObject(OBJECT_TYPE_CREATURE, "tat17_griff_01", lSpawn);
}

void main() {
	
	if (GetGriffGreetaGlobal() == TRUE && GetGriffSpawnLocal() == FALSE)
		{
			SetGriffSpawnLocal(TRUE);
			DelayCommand(1.0, SpawnGriff());
		}
	
	if (GetGlobalNumber("Mis_MissionTalk") == 14 && GetGlobalBoolean("Tat_Greet_Griff" == FALSE)
		{
			SetGlobalBoolean("Tat_Greet_Griff", TRUE);
		}
}
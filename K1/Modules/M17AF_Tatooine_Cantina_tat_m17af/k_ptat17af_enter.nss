#include "k_inc_tat"

void SpawnHelena() {
	
	object oSpawnWP = GetWaypointByTag("tat17_helenaspwn");
	location oSpawnLoc = GetLocation(oSpawnWP);
	
	CreateObject(OBJECT_TYPE_CREATURE, "helena", oSpawnLoc);
}

void main() {
	
	object oHelena = GetObjectByTag("Helena", 0);
	
	if (GetGlobalNumber("K_KOTOR_MASTER") < 20 && GetGlobalNumber("K_SWG_HELENA") == 2 && GetHelenaSpawnLocal() == FALSE)
		{
			SetHelenaSpawnLocal(TRUE);
			DelayCommand(1.0, SpawnHelena());
		}
		else {
				if (GetGlobalNumber("K_KOTOR_MASTER") >= 20 && GetIsObjectValid(oHelena) == TRUE)
					{
						DestroyObject(oHelena);
					}
			}
	
	object oAqualish = GetObjectByTag("SittingWalrusman", 0);
	object oBith = GetObjectByTag("SittingBith", 0);
	
	AssignCommand(oAqualish, ActionPlayAnimation(204, 1.0, 0.0));
	AssignCommand(oBith, ActionPlayAnimation(204, 1.0, 0.0));
}

#include "k_inc_kas"

void Spawn_Czerka() {
	object oWP_Czerka = GetWaypointByTag("kas22_wp_czguard");
	location lSpawn = GetLocation(oWP_Czerka);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_xxpost_01", lSpawn);
}

void Spawn_Chorrawl() {
	object oWP_Chorrawl = GetWaypointByTag("kas22_wp_chorrawl");
	location lSpawn = GetLocation(oWP_Chorrawl);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_chorraw_02", lSpawn);
}

void Spawn_Gorwook() {
	object oWP_Gorwook = GetWaypointByTag("kas22_wp_gorwook");
	location lSpawn = GetLocation(oWP_Gorwook);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_gorwook_01", lSpawn);
}

void main() {
	
	object oBasket = GetObjectByTag("kas22_basketdown", 0);
	object oGorwook = GetObjectByTag("kas22_gorwook_01", 0);
	object oChorraw = GetObjectByTag("kas22_chorraw_01", 0);
	object oWookcho1 = GetObjectByTag("kas22_wookcho_01", 0);
	object oWookcho2 = GetObjectByTag("kas22_wookcho_01", 1);
	object oWookg2 = GetObjectByTag("kas22_wookg2_01", 0);
	
	if (GetFreyyrDeadGlobal() == TRUE)
		{
			DelayCommand(1.0, Spawn_Gorwook());
			SetGorwookenSpawnGlobal(FALSE);
		}
		else if (GetHelpedFreyyrGlobal() == TRUE)
			{
				if (GetIsObjectValid(oGorwook) == TRUE)
					{
						DestroyObject(oGorwook, 0.0, TRUE);
					}
				
				if (GetIsObjectValid(oChorraw) == TRUE)
					{
						DestroyObject(oChorraw, 0.0, TRUE);
						DestroyObject(oWookcho1, 0.0, TRUE);
						DestroyObject(oWookcho2, 0.0, TRUE);
						DelayCommand(1.0, Spawn_Chorrawl());
					}
			}
			else if (GetFreyyrDeadGlobal() == TRUE)
				{
					if (GetIsObjectValid(oGorwook) == TRUE)
						{
							DestroyObject(oGorwook, 0.0, TRUE);
						}
					
					if (GetIsObjectValid(oWookg2) == TRUE)
						{
							object oDoor = GetObjectByTag("kas22_towndoor", 0);
							
							DestroyObject(oWookg2, 0.0, TRUE);
							DelayCommand(1.0, Spawn_Czerka());
							AssignCommand(oDoor, ActionLockObject(oDoor));
						}
				}
				else if (GetGlobalBoolean("G_KashyyykSlaver") == FALSE)
					{
						SetGlobalBoolean("G_KashyyykSlaver", TRUE);
					}

	if (GetChuundarDeadGlobal() == TRUE && GetWookieRebels2Local(OBJECT_SELF) == FALSE)
		{
			object oCorpse = GetObjectByTag("kas22_wookcorps2", 0);
			object oCzerka01 = GetObjectByTag("kas22_czguard_01", 0);
			object oCzerka02 = GetObjectByTag("kas22_czguard_02", 0);
			object oDehno = GetObjectByTag("kas22_dehno_01", 0);
			
			DestroyObject(oCzerka01, 0.0, TRUE);
			DestroyObject(oCzerka02, 0.0, TRUE);
			DestroyObject(oDehno, 0.0, TRUE);
			DestroyObject(oCorpse, 0.0, TRUE);
			
			SetWookieRebels2Local(TRUE, OBJECT_SELF);
		}
}

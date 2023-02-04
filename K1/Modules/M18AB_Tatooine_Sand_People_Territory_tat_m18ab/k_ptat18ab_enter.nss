#include "k_inc_tat"

void Spawn_Guard() {
	object oWP = GetWaypointByTag("tat18_wp_sguard");
	location lSpawn = GetLocation(oWP);
	
	CreateObject(OBJECT_TYPE_CREATURE, "tat18_14sandg_01", lSpawn, FALSE);
}

void VornSpawn() {
	vector vBike = Vector(242.835114, 286.128601, 89.715797);
	location lBike = Location(vBike, 55.75);
	vector vUnk = Vector(243.659515, 287.345703, 90.230499);
	location lUnk = Location(vUnk, 110.25);
	
	CreateObject(OBJECT_TYPE_PLACEABLE, "Vornsbike", lBike, FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "Vornsdroid", GetLocation(GetObjectByTag("wp_Vorndroidspawn", 0)), FALSE);
	CreateObject(OBJECT_TYPE_PLACEABLE, "tat_hide", GetLocation(GetObjectByTag("tat_hide_wp", 0)), FALSE);
	CreateObject(OBJECT_TYPE_PLACEABLE, "tat_junk", GetLocation(GetObjectByTag("tat_junk_wp", 0)), FALSE);
	
	int nCount = 0;
	object oBantha = GetObjectByTag("tat18ab_bantha", nCount);
}

void main() {
	
	object oUnknown;
	
	if (GetGlobalNumber("K_Geno_Vorn") == 1 && GetGlobalBoolean("K_VornSpawn") == FALSE)
		{
			SetGlobalBoolean("K_VornSpawn", TRUE);
			DelayCommand(0.2, VornSpawn());
		}
	
	SandpeopleDisguiseUsable();
	
	object oPC = GetFirstPC();
	object oGuard = GetObjectByTag("tat18_14sandg_01", 0);
	object oFac = GetObjectByTag("tat18_tuskanfac", 0);
	
	if (GetTuskenJobGlobal() == TRUE && GetIsEnemy(oFac, oPC) == FALSE && GetIsObjectValid(oGuard) == FALSE && GetTuskenDoneLocal() == FALSE)
		{
			SetTuskenDoneLocal(TRUE);
			DelayCommand(1.0, Spawn_Guard());
		}
		else if (GetIsObjectValid(oGuard) == TRUE && GetGlobalBoolean("tat_TuskenDead") == TRUE)
			{
				DestroyObject(oGuard, 0.0, TRUE);
			}
	
	if (GetGlobalBoolean("tat_TuskenDead") == TRUE)
		{
			object oTurret;
			
			oTurret = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
			
			while (GetIsObjectValid(oTurret) == TRUE)
				{
					if (GetTag(oTurret) == "tat18_turret" || GetTag(oTurret) == "tat18_turret2")
						{
							ChangeToStandardFaction(oTurret, STANDARD_FACTION_NEUTRAL);
						}
					
					oTurret = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
				}
		}
}

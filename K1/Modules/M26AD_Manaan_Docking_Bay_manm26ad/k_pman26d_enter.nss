#include "k_inc_man"

void SpawnSith() {
	DestroyObject(GetObjectByTag("vek", 0));
	DestroyObject(GetObjectByTag("vekdroid", 0));
	CreateObject(OBJECT_TYPE_CREATURE, "man26_sithkol1", GetLocation(GetObjectByTag("wp_man26_sithkol1", 0)), 0);
	CreateObject(OBJECT_TYPE_CREATURE, "man26_sithkol2", GetLocation(GetObjectByTag("wp_man26_sithkol2", 0)), 0);
}

void SpawnIthorak() {
	DestroyObject(GetObjectByTag("man26_sithkol1", 0));
	DestroyObject(GetObjectByTag("man26_sithkol2", 0));
	CreateObject(OBJECT_TYPE_CREATURE, "vek", GetLocation(GetObjectByTag("wp_vek1", 0)), 0);
	CreateObject(OBJECT_TYPE_CREATURE, "vekdroid", GetLocation(GetObjectByTag("wp_vekdroid1", 0)), 0);
	CreateObject(OBJECT_TYPE_CREATURE, "Ithorak", GetLocation(GetObjectByTag("wp_Ithorak1", 0)), 0);
}

void main() {
	
	if (GetEnteringObject() == GetFirstPC() && GetLoadFromSaveGame() == FALSE)
		{
			RevealMap();
			
			if (GetManaanMainPlotVariable() == 4 && HasNeverTriggered())
				{
					SetGlobalBoolean("MAN_PORT_ZONE", TRUE);
				}
			
			if (GetGlobalNumber("K_Geno_Ithorak") == 10 && GetGlobalBoolean("K_IthorakSpawn") == FALSE)
				{
					SetGlobalBoolean("K_IthorakSpawn", TRUE);
					SetGlobalBoolean("K_SithDestroy", TRUE);
					DelayCommand(0.2, SpawnIthorak());
					
					AssignCommand(GetObjectByTag("IthorakDoor1", 0), ActionCloseDoor(GetObjectByTag("IthorakDoor1", 0)));
					AssignCommand(GetObjectByTag("IthorakDoor2", 0), ActionCloseDoor(GetObjectByTag("IthorakDoor2", 0)));
				}
			
			if (GetGlobalNumber("K_Geno_Ithorak") > 10 && GetGlobalBoolean("K_SithDestroy") == TRUE)
				{
					SetGlobalBoolean("K_SithDestroy", FALSE);
					DelayCommand(0.2, SpawnSith());
				}
			
			if (GetGlobalBoolean("MAN_EXILED"))
				{
					object oHawkDoor = GetObjectByTag("man26ad_door30", 0);
					
					SetLocked(oHawkDoor, TRUE);
					AssignCommand(oHawkDoor, ActionCloseDoor(oHawkDoor));
				}
		}
}
#include "k_inc_tar"

void main() {
	
	object oSpawn;
	object oDoor = GetObjectByTag("tar02_cantdoor", 0);
	
	AddJournalQuestEntry("k_rapidtransit", 1, 0);
	
	Db_PostString("RUNNING AREA EVENT", 5, 5, 5.0);
	
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	
	if (!GetLoadFromSaveGame())
		{
			TAR_CleanupDeadObjects(OBJECT_SELF);
		}
	
	if (GetGlobalNumber("Tar_Gana") == 20 && !GetIsObjectValid(GetObjectByTag("GanaLavin021", 0)))
		{
			Db_PostString("SPAWNING GANA", 5, 5, 5.0);
			
			oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "tar02_gana02ac", GetLocation(GetObjectByTag("tar02_wpgana02", 0)));
			
			if (GetIsObjectValid(oSpawn) && GetIsObjectValid(GetObjectByTag("tar02_wpgana02", 0))))
				{
					Db_PostString("GANA SPAWNED", 5, 6, 5.0);
				}
			
			Db_PostString("CREATING THUGS", 5, 7, 5.0);
			
			oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "tar02_levinthug", GetLocation(GetObjectByTag("tar02_wpgana00", 0)));
			oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "tar02_levinthug", GetLocation(GetObjectByTag("tar02_wpgana01", 0)));
		}
}

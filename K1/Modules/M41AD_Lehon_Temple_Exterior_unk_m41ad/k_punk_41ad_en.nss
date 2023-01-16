#include "k_inc_unk"

void main() {
	
	object object1;
	object oEntering;
	location location1;
	oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) == TRUE && GetLoadFromSaveGame() == FALSE)
		{
			UNK_CleanupDeadObjects(OBJECT_SELF);
			
			if (GetGlobalNumber("G_FinalChoice") > 0)
				{
					SetAreaUnescapable(1);
				}
			
			if (GetGlobalBoolean("UNK_SHIELD_OFF"))
				{
					DestroyObject(GetObjectByTag("unk41_tplshield", 0), 0.0, 0, 0.0);
				}
			
			if (GetGlobalBoolean("UNK_TEMPLEREADY") == TRUE && GetGlobalBoolean("UNK_GUIDE") == FALSE)
				{
					SetGlobalBoolean("UNK_GUIDE", 1);
					
					if (GetGlobalBoolean("Unk_BlackHostile") == TRUE)
						{
							Db_PostString("spawning red guide", 5, 5, 1.0);
							CreateObject(1, "unk41_rakguider", GetLocation(GetObjectByTag("unk41_wpguide", 0)), 0);
							CreateObject(1, "unk41_rakguide2", GetLocation(GetObjectByTag("unk41_wpguide2", 0)), 0);
							CreateObject(1, "unk41_rakguide3", GetLocation(GetObjectByTag("unk41_wpguide3", 0)), 0);
							CreateObject(1, "unk41_rakguide4", GetLocation(GetObjectByTag("unk41_wpguide4", 0)), 0);
							CreateObject(1, "unk41_rakguide5", GetLocation(GetObjectByTag("unk41_wpguide5", 0)), 0);
							CreateObject(64, "rak_fire", GetLocation(GetObjectByTag("rak_fire_wp", 0)), 0);
						}
						else
							{
								if (GetGlobalBoolean("Unk_RedHostile") == TRUE)
									{
										Db_PostString("spawning black guide", 5, 5, 1.0);
										CreateObject(1, "unk41_rakguideb", GetLocation(GetObjectByTag("unk41_wpguide", 0)), 0);
										CreateObject(1, "unk41_rakguideb2", GetLocation(GetObjectByTag("unk41_wpguide2", 0)), 0);
										CreateObject(1, "unk41_rakguideb3", GetLocation(GetObjectByTag("unk41_wpguide3", 0)), 0);
										CreateObject(1, "unk41_rakguideb4", GetLocation(GetObjectByTag("unk41_wpguide4", 0)), 0);
										CreateObject(1, "unk41_rakguideb5", GetLocation(GetObjectByTag("unk41_wpguide5", 0)), 0);
										CreateObject(64, "rak_fire", GetLocation(GetObjectByTag("rak_fire_wp", 0)), 0);
									}
							}
				}
			
			if (GetGlobalBoolean("UNK_BLACKHOSTILE") == FALSE && GetGlobalBoolean("UNK_THEONE") == TRUE && GetIsObjectValid(GetObjectByTag("g_rancor03", 0)) == FALSE)
				{
					DestroyObject(GetObjectByTag("g_brakatan07", 0), 0.0, 1, 0.0);
					DestroyObject(GetObjectByTag("g_brakatan05", 0), 0.0, 1, 0.0);
					DestroyObject(GetObjectByTag("g_brakatan04", 0), 0.0, 1, 0.0);
					DestroyObject(GetObjectByTag("g_brakatan02", 0), 0.0, 1, 0.0);
					DestroyObject(GetObjectByTag("g_rancor04", 0), 0.0, 1, 0.0);
					DelayCommand(0.5, DestroyObject(GetObjectByTag("g_rancor04", 0), 0.0, 1, 0.0));
					
					if (GetGlobalBoolean("UNK_TEMP9") == TRUE)
						{
							CreateObject(1, "g_rancor03", GetLocation(GetObjectByTag("r1", 0)), 0);
							CreateObject(1, "g_rancor03", GetLocation(GetObjectByTag("r2", 0)), 0);
							SetGlobalBoolean("UNK_TEMP9", 0);
						}
				}
			
			if (GetIsObjectValid(GetObjectByTag("g_rancor02", 0)) == FALSE && GetGlobalBoolean("UNK_TEMP9") == TRUE)
				{
					CreateObject(1, "g_rancor02", GetLocation(GetObjectByTag("rr1", 0)), 0);
					CreateObject(1, "g_rancor02", GetLocation(GetObjectByTag("rr2", 0)), 0);
					SetGlobalBoolean("UNK_TEMP9", 0);
				}
		}
	
	object oAreaObject = GetFirstObjectInArea(GetArea(GetFirstPC()), 1);
	
	if (GetEnteringObject() == GetFirstPC())
		{
			if (GetIsObjectValid(GetObjectByTag("unk41_rakguide", 0)))
				{
					while (oAreaObject != OBJECT_INVALID)
						{
							if (GetStandardFaction(oAreaObject) == 1 || GetStandardFaction(oAreaObject) == 3)
								{
									DestroyObject(oAreaObject, 0.0, 1, 0.0);
								}
							oAreaObject = GetNextObjectInArea(GetArea(GetFirstPC()), 1);
						}
				}
		}
}

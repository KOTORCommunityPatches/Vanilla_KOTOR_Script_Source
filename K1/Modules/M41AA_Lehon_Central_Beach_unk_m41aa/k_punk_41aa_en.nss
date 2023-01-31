#include "k_inc_unk"

void main() {
	
	if (GetIsPC(GetEnteringObject()) == TRUE && GetLoadFromSaveGame() == FALSE)
		{
			UNK_CleanupDeadObjects(OBJECT_SELF);
			
			if (GetGlobalNumber("G_FinalChoice") > 0)
				{
					SetAreaUnescapable(TRUE);
				}
			
			Db_PostString(("UNK_PARTYSHOWDOWN = " + IntToString(GetGlobalNumber("UNK_PARTYSHOWDOWN"))), 5, 5, 5.0);
			
			if (GetGlobalNumber("G_FinalChoice") > 0 && GetGlobalNumber("UNK_PARTYSHOWDOWN") == 0)
				{
					SetAreaUnescapable(TRUE);
					
					SetGlobalNumber("UNK_PARTYSHOWDOWN", 1);
					
					SpawnAvailableNPC(NPC_CARTH, GetLocation(GetObjectByTag("carthstart", 0)));
					SpawnAvailableNPC(NPC_CANDEROUS, GetLocation(GetObjectByTag("candstart", 0)));
					SpawnAvailableNPC(NPC_MISSION, GetLocation(GetObjectByTag("missionstart", 0)));
					SpawnAvailableNPC(NPC_T3_M4, GetLocation(GetObjectByTag("t3m4start", 0)));
					
					if (IsAvailableCreature(NPC_HK_47) == TRUE)
						{
							SpawnAvailableNPC(NPC_HK_47, GetLocation(GetObjectByTag("hk47start", 0)));
						}
					
					if (IsAvailableCreature(NPC_ZAALBAR) == TRUE && GetGlobalBoolean("tat_ZaalbarTaken") == FALSE)
						{
							SpawnAvailableNPC(NPC_ZAALBAR, GetLocation(GetObjectByTag("zaalbarstart", 0)));
						}
				}
			
			if (GetGlobalBoolean("UNK_TEMP4") == TRUE && GetIsObjectValid(GetObjectByTag("unk41_blk6", 0)) == FALSE)
				{
					if (GetGlobalBoolean("UNK_BLACKHOSTILE") == TRUE)
						{
							CreateObject(OBJECT_TYPE_CREATURE, "unk41_blk6", GetLocation(GetObjectByTag("b1", 0)));
							CreateObject(OBJECT_TYPE_CREATURE, "unk41_blk6", GetLocation(GetObjectByTag("b1", 0)));
							CreateObject(OBJECT_TYPE_CREATURE, "unk41_blk6", GetLocation(GetObjectByTag("b2", 0)));
							CreateObject(OBJECT_TYPE_CREATURE, "unk41_blk6", GetLocation(GetObjectByTag("b2", 0)));
						}
						else if (GetGlobalBoolean("UNK_TEMP12") == FALSE)
							{
									SetGlobalBoolean("UNK_TEMP12", TRUE);
							}
					
					SetGlobalBoolean("UNK_TEMP4", FALSE);
				}
		}
}
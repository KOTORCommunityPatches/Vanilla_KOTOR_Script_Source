#include "k_inc_unk"

void main() {
	
	if (GetIsPC(GetEnteringObject()) == TRUE)
		{
			if (GetGlobalNumber("G_FinalChoice") > 0)
				{
					SetAreaUnescapable(TRUE);
				}
			
			if (GetGlobalBoolean("UNK_TEMP5") == TRUE)
				{
					Db_PostString("unk5", 5, 5, 2.0);
				}
			
			if (GetGlobalBoolean("UNK_TEMP6") == TRUE)
				{
					Db_PostString("unk6", 5, 6, 2.0);
				}
			
			if (GetGlobalBoolean("UNK_BLACKHOSTILE") == TRUE)
				{
					Db_PostString("unk7", 5, 7, 2.0);
				}
			
			if (GetGlobalBoolean("UNK_SPAWN") == TRUE)
				{
					CreateObject(OBJECT_TYPE_CREATURE, "unk41_rancor02", GetLocation(GetObjectByTag("wp_01_11", 0)), 0);
					CreateObject(OBJECT_TYPE_CREATURE, "unk41_rancor02", GetLocation(GetObjectByTag("wp_01_10", 0)), 0);
					CreateObject(OBJECT_TYPE_CREATURE, "unk41_blkwand001", GetLocation(GetObjectByTag("wp_01_07", 0)), 0);
					CreateObject(OBJECT_TYPE_CREATURE, "unk41_blkwandere", GetLocation(GetObjectByTag("wp_01_09", 0)), 0);
					CreateObject(OBJECT_TYPE_CREATURE, "unk41_blkwand001", GetLocation(GetObjectByTag("wp_01_04", 0)), 0);
					CreateObject(OBJECT_TYPE_CREATURE, "unk41_blkwandere", GetLocation(GetObjectByTag("wp_01_01", 0)), 0);
					CreateObject(OBJECT_TYPE_CREATURE, "unk41_blkwand001", GetLocation(GetObjectByTag("wp_01_12", 0)), 0);
					CreateObject(OBJECT_TYPE_CREATURE, "unk41_rakplot", GetLocation(GetObjectByTag("rakplot", 0)), 0);
					
					SetGlobalBoolean("UNK_SPAWN", FALSE);
				}
			
			if (GetGlobalBoolean("UNK_TEMP6") == TRUE || GetGlobalBoolean("UNK_BLACKHOSTILE") == TRUE)
				{
					UNK_SetBlackRakataHostile();
				}
			
			if (GetGlobalBoolean("UNK_TEMP6") == FALSE && GetGlobalBoolean("UNK_BLACKHOSTILE") == TRUE || GetGlobalBoolean("UNK_RED_TALK") == TRUE && GetGlobalBoolean("UNK_REDHOSTILE") == FALSE)
				{
					DestroyObject(GetObjectByTag("unk41_rancor01", 0), 0.0, TRUE);
					DelayCommand(0.3, DestroyObject(GetObjectByTag("unk41_rancor01", 0), 0.0, TRUE));
					DestroyObject(GetObjectByTag("unk41_blkwand001", 0), 0.0, TRUE);
					DestroyObject(GetObjectByTag("unk41_blkwandere", 0), 0.0, TRUE);
					DelayCommand(0.3, DestroyObject(GetObjectByTag("unk41_blkwand001", 0), 0.0, TRUE));
					DelayCommand(0.3, DestroyObject(GetObjectByTag("unk41_blkwandere", 0), 0.0, TRUE));
					DelayCommand(0.6, DestroyObject(GetObjectByTag("unk41_blkwand001", 0), 0.0, TRUE));
					DestroyObject(GetObjectByTag("plottalk", 0));
					DestroyObject(GetObjectByTag("entering", 0));
				}
		}
}
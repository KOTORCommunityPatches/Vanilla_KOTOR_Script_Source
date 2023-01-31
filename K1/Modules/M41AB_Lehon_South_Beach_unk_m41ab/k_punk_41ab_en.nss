#include "k_inc_unk"

void main() {
	
	if (GetIsPC(GetEnteringObject()) == TRUE && GetLoadFromSaveGame() == FALSE)
		{
			UNK_CleanupDeadObjects(OBJECT_INVALID);
			
			if (GetGlobalNumber("G_FinalChoice") > 0)
				{
					SetAreaUnescapable(TRUE);
				}
			
			if (GetGlobalBoolean("Unk_RedHostile"))
				{
					UNK_SetRedRakataHostile();
				}
			
			if (GetGlobalBoolean("UNK_TEMP10") == TRUE && GetIsObjectValid(GetObjectByTag("g_rancor02", 0)) == FALSE)
				{
					CreateObject(OBJECT_TYPE_CREATURE, "g_rancor02", GetLocation(GetObjectByTag("rr1", 0)));
					CreateObject(OBJECT_TYPE_CREATURE, "g_rancor02", GetLocation(GetObjectByTag("rr2", 0)));
					SetGlobalBoolean("UNK_TEMP10", FALSE);
				}
		}
}
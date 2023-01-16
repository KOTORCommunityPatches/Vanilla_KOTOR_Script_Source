#include "k_inc_debug"

void main() {
	
	Db_PostString("FIRING EXIT EVENT", 5, 5, 4.0);
	
	object oExiting = GetExitingObject();
	
	if !GetLoadFromSaveGame() && oExiting == GetFirstPC())
		{
			SetGlobalBoolean("K_PUNK_BEACH_RESET", TRUE);
			
			object oRakata01 = GetObjectByTag("unk41_blk1", 0);
			object oRakata02 = GetObjectByTag("unk41_blk2", 0);
			object oRakata03 = GetObjectByTag("unk41_blk3", 0);
			object oRakata04 = GetObjectByTag("unk41_blk4", 0);
			object oRakata05 = GetObjectByTag("unk41_blk5", 0);
			
			if (GetIsObjectValid(oRakata01) || GetIsObjectValid(oRakata02) || GetIsObjectValid(oRakata03) || GetIsObjectValid(oRakata04) || GetIsObjectValid(oRakata05))
				{
					if (GetIsObjectValid(oRakata01))
						{
							DestroyObject(oRakata01);
						}
					if (GetIsObjectValid(oRakata02))
						{
							DestroyObject(oRakata02);
						}
					if (GetIsObjectValid(oRakata03))
						{
							DestroyObject(oRakata03);
						}
					if (GetIsObjectValid(oRakata04))
						{
							DestroyObject(oRakata04);
						}
					if (GetIsObjectValid(oRakata05))
						{
							DestroyObject(oRakata05);
						}
				}
		}
}

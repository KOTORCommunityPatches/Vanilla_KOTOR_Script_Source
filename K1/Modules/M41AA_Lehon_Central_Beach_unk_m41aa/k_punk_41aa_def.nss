// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"
#include "k_inc_debug"
 
int RakCheck() {
	
	object oUnk41_blk4 = GetObjectByTag("unk41_blk4", 0);
	object oUnk41_blk5 = GetObjectByTag("unk41_blk5", 0);
	object oUnk41_blk1 = GetObjectByTag("unk41_blk1", 0);
	object oUnk41_blk2 = GetObjectByTag("unk41_blk2", 0);
	object oUnk41_blk3 = GetObjectByTag("unk41_blk3", 0);
	
	if (!GetIsObjectValid(oUnk41_blk4) ||
		GetIsDead(oUnk41_blk4) && !GetIsObjectValid(oUnk41_blk5) ||
		GetIsDead(oUnk41_blk5) && !GetIsObjectValid(oUnk41_blk1) ||
		GetIsDead(oUnk41_blk1) && !GetIsObjectValid(oUnk41_blk2) ||
		GetIsDead(oUnk41_blk2) && !GetIsObjectValid(oUnk41_blk3) ||
		GetIsDead(oUnk41_blk3))
			{
				return TRUE;
			}
	
	return FALSE;
}
 
void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 10)
		{
			if (RakCheck())
				{
					Db_PostString(("K_PUNK_BEACH_RESET = " + IntToString(GetGlobalBoolean("K_PUNK_BEACH_RESET"))), 5, 5, 3.0);
					
					if (GetGlobalBoolean("K_PUNK_BEACH_RESET") == FALSE)
						{
							SetGlobalBoolean("K_PUNK_BEACH_RESET", TRUE);
							
							Db_PostString("ithorians", 5, 5, 1.0);
							
							SetGlobalFadeOut();
							
							UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_08, TRUE);
							
							SetPartyLeader(NPC_PLAYER);
							UT_TeleportWholeParty(GetWaypointByTag("PUNK_DUROS_01"), GetWaypointByTag("PUNK_DUROS_02"), GetWaypointByTag("PUNK_DUROS_03"));
							
							CreateObject(OBJECT_TYPE_CREATURE, "unk41_ithor01", GetLocation(GetObjectByTag("d1", 0)));
							CreateObject(OBJECT_TYPE_CREATURE, "unk41_ithor02", GetLocation(GetObjectByTag("d2", 0)));
							
							Db_PostString("teleporting", 5, 7, 1.0);
							
							NoClicksFor(1.0);
							
							DelayCommand(0.5, UT_TeleportWholeParty(GetObjectByTag("i1wp", 0), GetObjectByTag("i2wp", 0), GetObjectByTag("i3wp", 0)));
							
							Db_PostString("conversation", 5, 8, 1.0);
							
							DelayCommand(1.0, AssignCommand(GetObjectByTag("invish", 0), ActionStartConversation(GetFirstPC(), "unk41_ithor01", FALSE, 0, TRUE)));
						}
				}
		}
}

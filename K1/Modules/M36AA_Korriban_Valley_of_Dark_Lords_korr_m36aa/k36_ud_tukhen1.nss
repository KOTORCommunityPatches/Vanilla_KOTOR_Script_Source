// Byte code does not match

#include "k_inc_utility"
 
void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{

		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{

		}
	else if (nUser == 1007) // DEATH
		{
			object oTukMook2 = GetObjectByTag("kor36_tukatahen2", 0);
			
			if (GetIsDead(oTukMook2) && GetGlobalBoolean("KOR_TUKATAQUEEN") == TRUE)
				{
					object oLash = GetObjectByTag("kor36_lashowe", 0);
					object oPC = GetFirstPC();
					
					SetGlobalBoolean("KOR_TUKATA_GONE", TRUE);
					CancelCombat(oLash);
					ChangeToStandardFaction(oLash, STANDARD_FACTION_NEUTRAL);
					
					UT_NPC_InitConversation("kor36_lashowe", "", OBJECT_INVALID);
				}
		}
	else if (nUser == 1008) // DISTURBED
		{

		}
	else if (nUser == 1009) // BLOCKED
		{

		}
	else if (nUser == 1010) // SPELL CAST AT
		{

		}
 }

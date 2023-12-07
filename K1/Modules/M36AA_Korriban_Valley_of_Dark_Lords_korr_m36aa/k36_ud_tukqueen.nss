// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

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
			object oTukMook1 = GetObjectByTag("kor36_tukatahen1", 0);
			object oTukMook2 = GetObjectByTag("kor36_tukatahen2", 0);
			
			if (GetIsDead(oTukMook1) && GetIsDead(oTukMook2))
				{
					object oPC = GetFirstPC();
					location lQueen = GetLocation(OBJECT_SELF);
					object oLashowe = GetObjectByTag("kor36_lashowe", 0);
					
					UT_CreateObject(OBJECT_TYPE_PLACEABLE, "kor36_plc_queen", lQueen);
					
					SetGlobalBoolean("KOR_TUKATA_GONE", TRUE);
					
					CancelCombat(oLashowe);
					ChangeToStandardFaction(oLashowe, STANDARD_FACTION_NEUTRAL);
					
					UT_NPC_InitConversation("kor36_lashowe", "", OBJECT_INVALID);
				}
			
			SetGlobalBoolean("KOR_TUKATAQUEEN", TRUE);
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

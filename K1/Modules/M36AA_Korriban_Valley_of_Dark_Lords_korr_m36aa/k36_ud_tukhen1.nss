// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	int int1 = GetUserDefinedEventNumber();
 	if ((int1 == 1001)) {
 	}
 	else {
 		if ((int1 == 1002)) {
 		}
 		else {
 			if ((int1 == 1003)) {
 			}
 			else {
 				if ((int1 == 1004)) {
 				}
 				else {
 					if ((int1 == 1005)) {
 					}
 					else {
 						if ((int1 == 1006)) {
 						}
 						else {
 							if ((int1 == 1007)) {
 								
 								object oTukMook2 = GetObjectByTag("kor36_tukatahen2", 0);
 								
 								if ((GetIsDead(oTukMook2) && (GetGlobalBoolean("KOR_TUKATAQUEEN") == TRUE)))
 									{
 										object oLash = GetObjectByTag("kor36_lashowe", 0);
 										object oPC = GetFirstPC();
 										
 										SetGlobalBoolean("KOR_TUKATA_GONE", TRUE);
 										CancelCombat(oLash);
 										ChangeToStandardFaction(oLash, STANDARD_FACTION_NEUTRAL);
 										
 										UT_NPC_InitConversation("kor36_lashowe", "", OBJECT_INVALID);
 									}
 							}
 							else {
 								if ((int1 == 1008)) {
 								}
 								else {
 									if ((int1 == 1009)) {
 									}
 									else {
 										if ((int1 == 1010)) {
 										}
 									}
 								}
 							}
 						}
 					}
 				}
 			}
 		}
 	}
 }
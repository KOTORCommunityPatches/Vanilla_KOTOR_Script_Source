// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	int nEvent = GetUserDefinedEventNumber();
 	
 	if ((nEvent == 1001))
 		{
 		}
 	else
 		{
 			if ((nEvent == 1002))
 				{
 				}
 			else
 				{
 					if ((nEvent == 1003))
 						{
 						}
 					else
 						{
 							if ((nEvent == 1004))
 								{
 								}
 							else
 								{
 									if ((nEvent == 1005))
 										{
 										}
 									else
 										{
 											if ((nEvent == 1006))
 												{
 												}
 											else
 												{
 													if ((nEvent == 1007))
 														{
 															object oTukMook1 = GetObjectByTag("kor36_tukatahen1", 0);
 															object oTukMook2 = GetObjectByTag("kor36_tukatahen2", 0);
 															
 															if ((GetIsDead(oTukMook1) && GetIsDead(oTukMook2)))
 																{
 																	object oPC = GetFirstPC();
 																	location lQuuen = GetLocation(OBJECT_SELF);
 																	object oLashowe = GetObjectByTag("kor36_lashowe", 0);
 																	
 																	UT_CreateObject(OBJECT_TYPE_PLACEABLE, "kor36_plc_queen", lQuuen);
 																	
 																	SetGlobalBoolean("KOR_TUKATA_GONE", TRUE);
 																	
 																	CancelCombat(oLashowe);
 																	ChangeToStandardFaction(oLashowe, STANDARD_FACTION_NEUTRAL);
 																	
 																	UT_NPC_InitConversation("kor36_lashowe", "", OBJECT_INVALID);
 																}
 															
 															SetGlobalBoolean("KOR_TUKATAQUEEN", TRUE);
 														}
 													else
 														{
 															if ((nEvent == 1008))
 																{
 																}
 															else
 																{
 																	if ((nEvent == 1009))
 																		{
 																		}
 																	else
 																		{
 																			if ((nEvent == 1010))
 																				{
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
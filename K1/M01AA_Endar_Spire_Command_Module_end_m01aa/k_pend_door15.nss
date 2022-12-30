// Byte code does not match

#include "k_inc_end"
 
 void main() {
 	
 	int nLevel = GetHitDice(GetFirstPC());
 	
 	if (GetGlobalNumber("END_ROOM7_DEAD") >= 2)
 		{
 			if (nLevel > 1)
 				{
 					SetLocked(OBJECT_SELF, FALSE);
 					ActionOpenDoor(OBJECT_SELF);
 					SetTraskState(TRASK_LEVEL_DONE);
 				}
 				else
 					{
 						if (GetDistanceBetween(GetTrask(), GetFirstPC()) > 10.0)
 							{
 								SetGlobalFadeOut();
 								DelayCommand(0.5, SetGlobalFadeIn(0.0, 0.5));
 							}
 						
 						AssignCommand(GetTrask(), ClearAllActions());
 						NoClicksFor(0.4);
 						DelayCommand(0.2, AssignCommand(GetTrask(), ActionStartConversation(GetFirstPC(), "end_levelup", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 					}
 		}
 }
